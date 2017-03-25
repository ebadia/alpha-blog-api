module Grape
  module Pagination
    def self.included(base)
      Grape::Endpoint.class_eval do
        def paginate(collection)
          per_page = ApiPagination.config.per_page_param(params) || route_setting(:per_page)

          options = {
            :page     => ApiPagination.config.page_param(params),
            :per_page => [per_page, route_setting(:max_per_page)].compact.min
          }
          collection = ApiPagination.paginate(collection, options)

          links = (header['Link'] || "").split(',').map(&:strip)
          url   = request.url.sub(/\?.*$/, '')
          pages = ApiPagination.pages_from(collection)

          pages.each do |k, v|
            old_params = Rack::Utils.parse_nested_query(request.query_string)
            new_params = old_params.merge('page' => v)
            links << %(<#{url}?#{new_params.to_param}>; rel="#{k}")
          end

          total_header    = ApiPagination.config.total_header
          per_page_header = ApiPagination.config.per_page_header
          page_header     = ApiPagination.config.page_header
          include_total   = ApiPagination.config.include_total

          header 'Link',          links.join(', ') unless links.empty?
          header total_header,    ApiPagination.total_from(collection).to_s if include_total
          header per_page_header, options[:per_page].to_s
          header page_header,     options[:page].to_s unless page_header.nil?

          return collection
        end
      end

      base.class_eval do
        def self.paginate(options = {})
          route_setting :per_page, options[:per_page]
          route_setting :max_per_page, options[:max_per_page]
          params do
            optional :page,     :type => Integer, :default => 1,
                                :desc => 'Page of results to fetch.'
            optional :per_page, :type => Integer,
                                :desc => 'Number of results to return per page.'
          end
        end
      end
    end
  end
end

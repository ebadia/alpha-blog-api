require 'rails/generators/active_record'

class ImmigrationGenerator < ActiveRecord::Generators::Base
  def create_immigration_file
    Rails.application.eager_load!
    @keys, warnings = Immigrant::KeyFinder.new.infer_keys
    warnings.values.each{ |warning| $stderr.puts "WARNING: #{warning}" }
    @keys.each do |key|
      next unless key.options[:dependent] == :delete
      $stderr.puts "NOTICE: #{key.options[:name]} has ON DELETE CASCADE. You should remove the :dependent option from the association to take advantage of this."
    end
    if @keys.present?
      migration_template Immigrant::TEMPLATE, "db/migrate/#{file_name}.rb"
    else
      puts 'Nothing to do'
    end
  end

  source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

  def migration_version
    if supports_versioning?
      "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
    end
  end

  def supports_versioning?
    Rails.version >= '5'
  end
end

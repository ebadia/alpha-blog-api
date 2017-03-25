# -*- encoding: utf-8 -*-
# stub: immigrant 0.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "immigrant".freeze
  s.version = "0.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jon Jensen".freeze]
  s.date = "2017-02-12"
  s.description = "Adds a generator for creating a foreign key migration based on your current model associations".freeze
  s.email = "jenseng@gmail.com".freeze
  s.homepage = "http://github.com/jenseng/immigrant".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Foreign key migration generator for Rails".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
  end
end

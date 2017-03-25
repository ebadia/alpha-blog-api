# -*- encoding: utf-8 -*-
# stub: devise_security_extension 0.9.2 ruby lib

Gem::Specification.new do |s|
  s.name = "devise_security_extension".freeze
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marco Scholl".freeze, "Alexander Dreher".freeze]
  s.date = "2015-04-02"
  s.description = "An enterprise security extension for devise, trying to meet industrial standard security demands for web applications.".freeze
  s.email = "team@phatworx.de".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/phatworx/devise_security_extension".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Security extension for devise".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1.1"])
      s.add_runtime_dependency(%q<devise>.freeze, [">= 2.0.0"])
      s.add_development_dependency(%q<rails_email_validator>.freeze, [">= 0"])
      s.add_development_dependency(%q<easy_captcha>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.0.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.1.1"])
      s.add_dependency(%q<devise>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<rails_email_validator>.freeze, [">= 0"])
      s.add_dependency(%q<easy_captcha>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>.freeze, ["~> 2.0.1"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1.1"])
    s.add_dependency(%q<devise>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<rails_email_validator>.freeze, [">= 0"])
    s.add_dependency(%q<easy_captcha>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.0.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: marionette-rails 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "marionette-rails".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Godfrey Chan".freeze, "Stafford Brunk".freeze]
  s.date = "2013-08-14"
  s.description = "Vendors Backbone.Marionette for use with the asset pipeline.".freeze
  s.email = ["godfreykfc@gmail.com".freeze, "stafford.brunk@gmail.com".freeze]
  s.homepage = "https://github.com/chancancode/marionette-rails".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Backbone.Marionette for Rails".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
  end
end

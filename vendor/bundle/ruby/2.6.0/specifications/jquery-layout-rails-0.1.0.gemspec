# -*- encoding: utf-8 -*-
# stub: jquery-layout-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-layout-rails".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rodrigo Rosenfeld Rosas".freeze]
  s.date = "2013-01-13"
  s.description = "Resizable panels jQuery plugin.".freeze
  s.email = ["rr.rosas@gmail.com".freeze]
  s.homepage = "http://github.com/rosenfeld/jquery-layout-rails".freeze
  s.licenses = ["MIT".freeze, "GPL".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "jQuery layout plugin packaged as a Rails engine.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
  end
end

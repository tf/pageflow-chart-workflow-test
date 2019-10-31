# -*- encoding: utf-8 -*-
# stub: backbone-rails 1.0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "backbone-rails".freeze
  s.version = "1.0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexander Flatter".freeze]
  s.date = "2013-07-30"
  s.description = "Ships backbone and underscore to your Rails 3.1 application through the new asset pipeline. Rails 3.0 is supported via generators.".freeze
  s.email = ["flatter@fastmail.fm".freeze]
  s.homepage = "https://github.com/aflatter/backbone-rails".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "backbone and underscore for Rails".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
  end
end

# -*- encoding: utf-8 -*-
# stub: feathericon-rails 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "feathericon-rails".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["shoken".freeze]
  s.date = "2018-09-17"
  s.description = "[ Icons ] Simple, scalable vector icon font for websites, apps.".freeze
  s.email = ["syokenz@gmail.com".freeze]
  s.homepage = "https://github.com/feathericon/feathericon-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "feathericon for Ruby on Rails".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0.0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
  end
end

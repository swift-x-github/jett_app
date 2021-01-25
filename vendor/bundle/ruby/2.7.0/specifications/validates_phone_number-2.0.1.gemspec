# -*- encoding: utf-8 -*-
# stub: validates_phone_number 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "validates_phone_number".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Travis Jeffery".freeze]
  s.date = "2012-11-12"
  s.description = "Adds validation methods to ActiveModel for validating phone numbers.".freeze
  s.email = ["t@travisjeffery.com".freeze]
  s.homepage = "".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Adds validation methods to ActiveModel for validating phone numbers.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<minitest>.freeze, ["= 2.10.0"])
    s.add_development_dependency(%q<rails>.freeze, ["= 3.1.0"])
  else
    s.add_dependency(%q<minitest>.freeze, ["= 2.10.0"])
    s.add_dependency(%q<rails>.freeze, ["= 3.1.0"])
  end
end

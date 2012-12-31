# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pinny"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthew Rudy Jacobs"]
  s.date = "2012-12-31"
  s.email = "MatthewRudyJacobs@gmail.com"
  s.files = ["pinny.gemspec", "Rakefile", "test/pinny_test.rb", "test/test_helper.rb", "lib/pinny.rb"]
  s.homepage = "http://github.com/matthewrudy/pinny"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Pinyin conversion tool"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

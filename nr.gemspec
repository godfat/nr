# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "nr"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lin Jen-Shin (godfat)"]
  s.date = "2011-09-13"
  s.description = ""
  s.email = ["godfat (XD) godfat.org"]
  s.executables = ["nr"]
  s.files = [
  ".gitignore",
  ".gitmodules",
  "Rakefile",
  "bin/nr",
  "lib/nr.rb",
  "lib/nr/version.rb",
  "nr.gemspec",
  "task/.gitignore",
  "task/gemgem.rb"]
  s.homepage = "https://github.com/godfat/nr"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = ""

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cool.io>, [">= 0"])
    else
      s.add_dependency(%q<cool.io>, [">= 0"])
    end
  else
    s.add_dependency(%q<cool.io>, [">= 0"])
  end
end

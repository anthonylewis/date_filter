# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "date_filter/version"

Gem::Specification.new do |s|
  s.name        = "date_filter"
  s.version     = DateFilter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anthony Lewis"]
  s.email       = ["me@anthonylewis.com"]
  s.homepage    = ""
  s.summary     = %q{Adds newest and oldest methods to ActiveRecord}
  s.description = %q{Adds newest and oldest methods to ActiveRecord}

  s.add_development_dependency "rspec"
  s.add_development_dependency "activerecord"

  s.rubyforge_project = "date_filter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

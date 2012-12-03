# -*- encoding: utf-8 -*-
require File.expand_path('../lib/antismoker/tests/memcache/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yamashita Yuu"]
  gem.email         = ["yamashita@geishatokyo.com"]
  gem.description   = %q{An antismoker plugin for smoke testing memcache services.}
  gem.summary       = %q{An antismoker plugin for smoke testing memcache services.}
  gem.homepage      = "https://github.com/yyuu/antismoker-memcache"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "antismoker-memcache"
  gem.require_paths = ["lib"]
  gem.version       = AntiSmoker::MemcacheModule::VERSION

  gem.add_dependency("antismoker")
  gem.add_dependency("memcache")
end

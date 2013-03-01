# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'softy/version'

Gem::Specification.new do |gem|
  gem.name          = "softy"
  gem.version       = Softy::VERSION
  gem.authors       = ["Ryan Oberholzer"]
  gem.email         = ["ryan@platform45.com"]
  gem.description   = %q{Simple soft delete in ActiveRecord models}
  gem.summary       = %q{Adds soft delete functionality to your ActiveRecord models by overwriting destroy and delete methods. All callbacks still work as expected!}
  gem.homepage      = "https://github.com/ryanza/softy"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport", "~> 3.2.0"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end

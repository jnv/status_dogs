# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = "status_dogs"
  gem.version     = "0.0.2"
  gem.authors     = ["Jan Vlnas", "iain"]
  gem.email       = ["gems@jan.vlnas.cz", "iain@iain.nl"]
  gem.homepage    = "https://github.com/jnv/status_dogs"
  gem.summary     = %q{Rack middleware; replaces responses with dogs}
  gem.description = %q{Rack middleware replacing responses with relevant pictures of dogs, based on the status code.}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  # specify any dependencies here; for example:
  gem.add_development_dependency "rspec", ">= 2"
  gem.add_development_dependency "rack-test"
  gem.add_development_dependency "rake"
  gem.add_runtime_dependency "rack"
end

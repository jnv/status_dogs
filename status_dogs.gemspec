# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "status_dogs"
  s.version     = "0.0.1"
  s.authors     = ["Jan Vlnas", "iain"]
  s.email       = ["gems@jan.vlnas.cz", "iain@iain.nl"]
  s.homepage    = "https://github.com/jnv/status_dogs"
  s.summary     = %q{Rack middleware; replaces responses with dogs}
  s.description = %q{Rack middleware replacing responses with relevant pictures of dogs, based on the status code.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", ">= 2"
  s.add_development_dependency "rack-test"
  s.add_development_dependency "rake"
  s.add_runtime_dependency "rack"
end

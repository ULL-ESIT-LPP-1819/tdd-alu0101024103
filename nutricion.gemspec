# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nutricion/version'

Gem::Specification.new do |spec|
  spec.name          = "nutricion"
  spec.version       = Nutricion::VERSION
  spec.authors       = ["Brian Samir Santamaria Valero"]
  spec.email         = ["alu0101024103@ull.edu.es"]

  spec.summary       = %q{Como hacer una etiqueta de nutricion}
  spec.description   = %q{haciendo una etiqueta para la nutricion }
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0101024103.git"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/ULL-ESIT-LPP-1819/tdd-alu0101024103.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
spec.add_development_dependency "coveralls"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"

end

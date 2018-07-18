
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fake_mollie/version"

Gem::Specification.new do |spec|
  spec.name          = "fake_mollie"
  spec.version       = FakeMollie::VERSION
  spec.authors       = ["Jeroen van Baarsen"]
  spec.email         = ["jeroenvanbaarsen@gmail.com"]

  spec.summary       = %q{A stub for testing against the Mollie API}
  spec.homepage      = "https://github.com/jvanbaarsen/fake_mollie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.11"
end

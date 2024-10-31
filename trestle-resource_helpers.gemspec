require_relative 'lib/trestle/resource_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "trestle-resource_helpers"
  spec.version       = Trestle::ResourceHelpers::VERSION

  spec.authors       = ["Matthieu Ciappara"]
  spec.email         = ["matthieu.ciappara@outlook.com"]

  spec.summary       = "Add helpers for Trestle resources"
  spec.homepage      = "https://github.com/Ezveus/trestle-resource_helpers.git"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end

  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ezveus/trestle-resource_helpers"

  spec.add_dependency 'rails', '>= 5.2', '< 8'
  spec.add_dependency "trestle", "~> 0.9.0", ">= 0.9.3"

  spec.add_development_dependency "rspec-rails", "~> 4.0"
end

# frozen_string_literal: true

require_relative "lib/address_base_registry_geocoder/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby-address_base_registry_geocoder"
  spec.version       = AddressBaseRegistryGeocoder::VERSION
  spec.authors       = ["nc163"]
  spec.email         = ["kou1992@gmail.com"]

  spec.summary       = "abr-geocoder API client"
  spec.description   = ""
  spec.homepage      = "https://github.com/nc163/ruby-address_base_registry_geocoder"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir[
    "lib/**/*.rb",
    "README.md",
    "CHANGELOG.md"
  ]
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1"
  spec.add_development_dependency "rspec", "~> 3.0"
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end

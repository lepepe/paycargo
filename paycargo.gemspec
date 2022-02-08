# frozen_string_literal: true

require_relative "lib/paycargo/version"

Gem::Specification.new do |spec|
  spec.name = "paycargo"
  spec.version = Paycargo::VERSION
  spec.authors = ["Jose Perez"]
  spec.email = ["jose.perez@vertilux.com"]

  spec.summary = "Ruby wrapper library for Paycargo's API."
  spec.description = "Ruby wrapper library for Paycargo's API."
  spec.homepage = "https://lepepe.github.io/paycargo"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lepepe/paycargo"
  spec.metadata["changelog_uri"] = "https://github.com/lepepe/paycargo/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "faraday_middleware", "~> 0.14.0"
end

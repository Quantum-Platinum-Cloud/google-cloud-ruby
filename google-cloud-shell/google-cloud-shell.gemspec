# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/shell/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-shell"
  gem.version       = Google::Cloud::Shell::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Shell is an interactive shell environment for Google Cloud that makes it easy for you to learn and experiment with Google Cloud and manage your projects and resources from your web browser. Note that google-cloud-shell-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-shell instead. See the readme for more details."
  gem.summary       = "API Client library for the Cloud Shell API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.5"

  gem.add_dependency "google-cloud-core", "~> 1.5"
  gem.add_dependency "google-cloud-shell-v1", "~> 0.0"

  gem.add_development_dependency "google-style", "~> 1.25.1"
  gem.add_development_dependency "minitest", "~> 5.14"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 12.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
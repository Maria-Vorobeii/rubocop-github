# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "rubocop-github"
  s.version = "0.13.0"
  s.summary = "RuboCop GitHub"
  s.description = "Code style checking for GitHub Ruby repositories "
  s.homepage = "https://github.com/github/rubocop-github"
  s.license = "MIT"

  s.files = Dir["README.md", "STYLEGUIDE.md", "LICENSE", "config/*.yml", "lib/**/*.rb", "guides/*.md"]

  s.add_dependency "rubocop", "~> 0.59"
  # TODO: If you use this gem in "edge" mode, it requires both
  # rubocop-performance and rubocop-rails but it's not currently possible to
  # add these to the gemspec because both of them require a ver recent version
  # of rubocop which would break any clients that accidentally `bundle update`.
  # This should become much simpler once this gem reaches v1

  s.add_development_dependency "actionview", "~> 5.0"
  s.add_development_dependency "minitest", "~> 5.10"
  s.add_development_dependency "rake", "~> 12.0"

  s.required_ruby_version = ">= 2.1.0"

  s.email = "engineering@github.com"
  s.authors = "GitHub"
end

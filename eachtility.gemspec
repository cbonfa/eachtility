require_relative 'lib/eachtility/version'

Gem::Specification.new do |spec|
  spec.name          = "eachtility"
  spec.version       = Eachtility::VERSION
  spec.authors       = ["César Bonfá"]
  spec.email         = ["bonfa@inaum.net"]

  spec.summary       = "Extensions for each command"
  spec.description   = "Variations of commands based on each"
  spec.homepage      = "https://github.com/cbonfa/eachtility"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cbonfa/eachtility"
  spec.metadata["changelog_uri"] = "https://github.com/cbonfa/eachtility/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

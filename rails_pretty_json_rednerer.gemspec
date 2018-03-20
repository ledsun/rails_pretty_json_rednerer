
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_pretty_json_rednerer/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_pretty_json_rednerer"
  spec.version       = RailsPrettyJsonRednerer::VERSION
  spec.authors       = ["shigeru.nakajima"]
  spec.email         = ["shigeru.nakajima@luxiar.com"]

  spec.summary       = %q{Append a pretty_json renderer to Rails.}
  spec.description   = %q{This short little gem adds renderer that render prettify JSON responses as 'pretty_json'.}
  spec.homepage      = "https://github.com/ledsun/rails_pretty_json_rednerer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'combustion', '~> 0.8.0'
  spec.add_runtime_dependency 'rails', '>= 3.2'
end

# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rebot/version"

Gem::Specification.new do |spec|
  spec.name          = "rebot"
  spec.version       = Rebot::VERSION
  spec.authors       = ["Tomoyuki Sakurai"]
  spec.email         = ["tomoyukis@reallyenglish.com"]

  spec.summary       = "bot to help tomoyukis"
  spec.description   = "bot that makes a cup of coffee for tomoyukis"
  spec.homepage      = "http://github.com/reallyenglish/rebot"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://example.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "lita", "~> 4.7.1"
  spec.add_dependency "lita-hipchat", "~> 3.0.2"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.47.1"
  spec.add_development_dependency "guard-rspec", "~> 4.7.3"
  spec.add_development_dependency "guard-rubocop", "~> 1.3.0"
end


lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "njunusk/version"

Gem::Specification.new do |spec|
  spec.name          = "njunusk"
  spec.version       = Njunusk::VERSION
  spec.authors       = ["Njunu Simon"]
  spec.email         = ["njunusk@gmail.com"]

  spec.summary       = "Create your ruby njunusk"
  spec.description   = "Generates a gem for your njunusk"
  spec.homepage      = "https://github.com/njunusk/njunusk"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"

  spec.add_dependency "artii"
  spec.add_dependency "lolcat"
end

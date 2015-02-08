$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bkc/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bkc"
  s.version     = Bkc::VERSION
  s.authors     = ["Zhenya Telyukov"]
  s.email       = ["telyukov@gmail.com"]
  s.homepage    = "/"
  s.summary     = "bkc plugin"
  s.description = "to test bkc  plugin - first exercise"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
end

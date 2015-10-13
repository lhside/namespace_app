$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "content/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "content"
  s.version     = Content::VERSION
  s.authors     = ["lhside"]
  s.email       = ["lhside@example.com"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end

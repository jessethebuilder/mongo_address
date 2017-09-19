$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongo_address/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongo_address"
  s.version     = MongoAddress::VERSION
  s.authors     = ["Jesse Farmer"]
  s.email       = ["jesse@anysoft.us"]
  s.homepage    = "https://anysoft.us"
  s.summary     = "Address. Mongo."
  s.description = "Address stuff for mongo"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.3"
  s.add_dependency "mongoid", "~> 6.2.0"

  # s.add_development_dependency "sqlite3"
end

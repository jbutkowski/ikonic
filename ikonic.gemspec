$LOAD_PATH.push File.expand_path("lib", __dir__)

require 'ikonic/version'

Gem::Specification.new do |s|
  s.name        = "ikonic"
  s.version     = Ikonic::VERSION
  s.summary     = "The best icons in one place"
  s.description = "A pure ruby wrapper around your favourite icon libraries"
  s.authors     = ["Dave Kinkead"]
  s.email       = "dave@kinkead.com.au"
  s.files       = Dir["{lib,assets}/**/*", "MIT-LICENSE", "README.md"]
  s.homepage    = "https://github.com/fatwombatstudios/ikonic"
  s.license     = 'MIT'
end
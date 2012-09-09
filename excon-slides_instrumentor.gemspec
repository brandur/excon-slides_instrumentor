Gem::Specification.new do |gem|
  gem.name        = "excon-slides_instrumentor"
  gem.version     = "0.1.0"

  gem.author      = "Brandur"
  gem.email       = "brandur@mutelight.org"
  gem.homepage    = "https://github.com/brandur/excon-slides_instrumentor"
  gem.license     = "MIT"
  gem.summary     = "Excon instrumentor providing instrumentation in Slides format."

  gem.files = %w{lib/excon/slides_instrumentor.rb}

  gem.add_dependency "slides", "~> 0.1"
end

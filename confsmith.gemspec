require_relative "lib/confsmith/version"

Gem::Specification.new do |spec|
  spec.name        = "confsmith"
  spec.version     = Confsmith::VERSION
  spec.authors     = [ "Adrian" ]
  spec.email       = [ "adrian@adrianthedev.com" ]
  spec.homepage    = "https://github.com/avo-hq/confsmith"
  spec.summary     = "Confsmith is a dummy Rails plugin that shows how to register assets using the various methods available today."
  spec.description = "Confsmith is a dummy Rails plugin that shows how to register assets using the various methods available today."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/avo-hq/confsmith"
  spec.metadata["changelog_uri"] = "https://github.com/avo-hq/confsmith"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
end

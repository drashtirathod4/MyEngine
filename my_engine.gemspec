require_relative "lib/my_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "my_engine"
  spec.version     = "1.0.0"
  spec.authors     = ["drashtirathod4"]
  spec.email       = ["drashti.r@simformsolutions.com"]
  spec.summary     = "Summary of MyEngine."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.7.2"
end

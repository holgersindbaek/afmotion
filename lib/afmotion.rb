require "afmotion/version"
require 'motion-cocoapods'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'afmotion/**/*.rb')).each do |file|
    app.files.unshift(file)
    if app.respond_to?("exclude_from_detect_dependencies")
      app.exclude_from_detect_dependencies << file
    end
  end
end
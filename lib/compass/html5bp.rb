require "compass/html5bp/version"

module Compass
  module html5bp
    Compass::Frameworks.register("compass-html5bp", :path => "#{File.dirname(__FILE__)}/../..")
  end
end

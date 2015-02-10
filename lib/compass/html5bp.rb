require "compass/html5bp/version"

module Compass
  module Html5bp
    Compass::Frameworks.register("compass-html5bp", :path => "#{File.dirname(__FILE__)}/../..")
  end
end

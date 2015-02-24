require "compass/h5bp/version"

module Compass
  module Html5bp
    Compass::Frameworks.register("compass-h5bp", :path => "#{File.dirname(__FILE__)}/../..")
  end
end

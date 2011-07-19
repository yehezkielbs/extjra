module Extjra
  class MenuController < Extjra::ApplicationController
    def controller
      @class_names = []

      filenames = Dir.glob(Rails.application.paths.app.models.collect { |path| File.join(path, "**/*.rb") })
      filenames.each do |filename|
        @class_names += File.read(filename).scan(/class ([\w\d_\-:]+)/).flatten
      end
      @class_names
    end
  end
end
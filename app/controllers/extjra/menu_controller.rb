module Extjra
  class MenuController < Extjra::ApplicationController
    def controller
      @class_names = Extjra.available_models
    end
  end
end
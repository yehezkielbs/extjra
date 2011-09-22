module Extjra
  class MenuController < Extjra::ApplicationController
    def controller
      @class_names = Extjra::Model.available_models
    end
  end
end
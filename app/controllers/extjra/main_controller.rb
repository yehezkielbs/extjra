require 'application_controller'

module Extjra
  class MainController < Extjra::ApplicationController
    def index
      @class_names = Extjra.available_models
      render(:layout => 'extjra/layouts/application')
    end

    def controller
      @abstract_model = Extjra::AbstractModel.new(:resources => params[:resources])
    end
  end
end

require 'application_controller'

module Extjra
  class MainController < Extjra::ApplicationController
    def index
      render(:layout => 'extjra/layouts/application')
    end

    def controller
      @resources = params[:resources]
      @model_name = @resources.classify
      @model = @model_name.constantize
    end
  end
end

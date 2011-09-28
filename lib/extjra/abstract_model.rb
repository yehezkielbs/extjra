module Extjra
  class AbstractModel
    attr_reader :resources, :model, :model_class

    def initialize(options)
      if options[:resources]
        @resources = options[:resources]
        @model = @resources.classify
      elsif options[:model]
        @model = options[:model]
        @resources = @model.tableize
      end

      @model_class = @model.constantize
    end

    def columns
      @model_class.columns
    end

    def belongs_to_associations
      @model_class.reflect_on_all_associations(:belongs_to)
    end
  end
end

Given /^These (.*?) data exist:$/ do |model_name, table|
  model = model_name.constantize
  table.hashes.each do |row|
    attributes = {}
    row.each { |k, v| attributes[k.gsub(' ', '').underscore] = v }
    model.create!(attributes)
  end
end

Then /^the (.*?) data should be empty$/ do |model_name|
  model = model_name.constantize
  model.all.should be_empty
end

And /^This (.*?) data should exists:$/ do |model_name, table|
  model = model_name.constantize
  table.hashes.each do |row|
    attributes = {}
    included = []
    row.each do |key, value|
      attribute_key = key.gsub(' ', '').underscore
      if (attribute_key =~ /^(.*)\.(.*)$/)
        foreign_table = $1
        foreign_field = $2
        included << foreign_table.to_sym
        attributes["#{foreign_table.tableize}.#{foreign_field}"] = value
      else
        attributes[attribute_key] = value
      end
    end
    model.first(:conditions => attributes, :include => included).should_not be_nil
  end
end

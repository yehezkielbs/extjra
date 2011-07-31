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
    row.each { |k, v| attributes[k.gsub(' ', '').underscore] = v }
    model.first(:conditions => attributes).should_not be_nil
  end
end
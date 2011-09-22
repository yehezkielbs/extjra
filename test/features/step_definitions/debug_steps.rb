When /^I wait for (\d*) seconds?$/ do |duration|
  sleep(duration.to_i)
end

When /^I debug$/ do
  require 'ruby-debug'; debugger
end
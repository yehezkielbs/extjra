When /^I click "([^"]*)" on Navigation panel$/ do |selected_item|
  menu_item = page.all('#navigation-panel .x-grid-cell-inner').find {|item| item.text == selected_item}
  menu_item.click
end

When /^I wait until "([^"]*)" tab is ready$/ do |tab_title|
  while not page.all('#content-panel .x-tab-inner').find {|item| item.text == tab_title} do
    sleep 0.2
  end
end

When /^I select the (.*?) row on the grid view$/ do |ordinal|
  if ordinal =~ /^(\d+)/
    row_index = $1.to_i - 1
    page.all('#content-panel .x-grid-table .x-grid-row')[row_index].click
  end
end

When /^I wait until the saving process finish$/ do
  while page.has_css?('.x-grid-dirty-cell') do
    sleep 0.2
  end
end
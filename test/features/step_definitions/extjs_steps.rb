When /^I click "([^"]*)" on Navigation panel$/ do |menu_item|
  page.all('#navigation-panel .x-grid-cell-inner')[navigation_index(menu_item)].click
end

When /^I select the (.*?) row on the grid view$/ do |ordinal|
  if ordinal =~ /^(\d+)/
    row_number = $1.to_i
    page.all('.x-grid-table .x-grid-row')[row_number].click
  end
end
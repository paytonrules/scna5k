Given /^the following runners:$/ do |table|
  # table is a Cucumber::Ast::Table

  Runner.create!(table.hashes)
end

Then /^I should see the following runners:$/ do |table|
  # table is a Cucumber::Ast::Table

  actual_table = tableish('div#runners > div', 'span')
  p actual_table
  table.diff!(actual_table)
end

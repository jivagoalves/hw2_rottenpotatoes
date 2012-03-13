Given /^I want to search for a movie$/ do
end

When /^I go to movies page$/ do
  visit movies_path
end

Then /^I should see a link "([^"]*)" with id "([^"]*)"$/ do |text, id|
  page.should have_selector("a#" + id, :text => text)
end

Given /^I am on movies page$/ do
  visit movies_path
end

When /^I click on the header link "([^"]*)"$/ do |link_id|
  click_link link_id
end

Then /^I should see the link "([^"]*)" highlighted$/ do |link_id|
  page.should have_selector("table#movies th.hilite a#" + link_id)
end

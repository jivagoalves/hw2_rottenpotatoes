Given /^I want to search for a movie$/ do
end

When /^I go to movies page$/ do
  visit movies_path
end

Then /^I should see a link "([^"]*)" with id "([^"]*)"$/ do |text, id|
  page.should have_selector("a#" + id, :text => text)
end

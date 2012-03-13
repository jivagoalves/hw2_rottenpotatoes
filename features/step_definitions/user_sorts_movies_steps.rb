Given /^I want to search for a movie$/ do
end

When /^I go to movies page$/ do
  visit movies_path
end

Then /^I should see the link "([^"]*)" with id "([^"]*)"$/ do |link_name, id|
  page.should have_selector("a##{id}", :text => link_name)
end

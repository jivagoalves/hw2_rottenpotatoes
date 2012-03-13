Given /^I want to search for a movie$/ do
end

When /^I go to movies page$/ do
  visit movies_path
end

Then /^I should see the link "([^"]*)"$/ do |link_name|
  page.should have_selector('a', :text => link_name)
end

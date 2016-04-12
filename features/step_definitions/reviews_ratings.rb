require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


Given(/^the following food outlets exist:$/) do |table|
  
end

And(/^I selected particular Food Outlet$/) do
 # pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select Food Outlet$/) do 
  visit('/reviews_and_ratings/new')
end

When(/^I press "([^"]*)" button$/) do |button|
  click_button(button)
end


Then(/^I should click on "([^"]*)" button to give user ratings$/) do |button|
  click_button(button)
end

Then(/^I should write "([^"]*)" text field to give user reviews$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end
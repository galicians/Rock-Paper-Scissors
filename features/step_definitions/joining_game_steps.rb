
Given(/^I am in the home page$/) do
	visit '/'
end

When(/^I register my "(.*?)"$/) do |name|
	click_link('Register')
	visit('/registration')
	fill_in('name', :with => 'name')
	click_button('Join')	
end

Then(/^I should be able to see the playing area$/) do
	visit('/playing_area')
end
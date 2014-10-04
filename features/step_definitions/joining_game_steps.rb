
Given(/^I am in the home page$/) do
	visit '/'
end

When(/^I choose opponent$/) do

end

When(/^I register my "(.*?)"$/) do |name|
	click_link('Register')
	visit('/registration')
	fill_in('name', :with => 'name')
	click_button('Join')
end


When(/^I choose "(.*?)" as opponent$/) do |opponent|
	click_button('algorithm')
end


Then(/^I should be place on the playing area$/) do
	visit('/playing_area')
end

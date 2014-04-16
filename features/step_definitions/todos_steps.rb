Given(/^I have (\d+) todos$/) do |number|
  number.to_i.times do |n|
    Todo.make!(name: "Todo #{n+1}")
  end
end

Given(/^I go to my todos$/) do
  click_on 'Todo list'
end

Then(/^I should see all my todos$/) do
  page.should have_content "Todo 1"
  page.should have_content "Todo 2"
end
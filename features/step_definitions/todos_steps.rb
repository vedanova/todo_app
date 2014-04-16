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

And(/^I add a new todo with name "([^"]*)"$/) do |name|
  fill_in 'Add Todo', with: name
  click_on 'Add todo'
end

Then(/^I should see "([^"]*)" in the todo list$/) do |name|
  within('#todos') do
    page.should have_content name
  end
end
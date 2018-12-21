def visit_page_and_create
  visit "/"
  fill_in "message", with: "Hello"
  click_button "Create"
end

def long_message_create
  visit '/'
  fill_in "message", with: "This message is over 20 characters long"
  click_button "Create"
end

def long_message_create_2
  visit '/'
  fill_in "message", with: "This message is also over 20 characters long"
  click_button "Create"
end

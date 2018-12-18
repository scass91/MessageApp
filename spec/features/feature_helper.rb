def visit_page_and_submit
  visit "/"
  fill_in "message", with: "Hello"
  click_button "Submit"
end

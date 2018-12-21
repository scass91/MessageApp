require_relative "./feature_helper.rb"

feature 'testing' do
  scenario 'testing our framework' do
    visit '/'
    expect(page).to have_text 'FACESMASH'
  end

  scenario "Can view form to fill in" do
    visit_page_and_create
    expect(page).to have_content "Hello"
  end

  scenario "can view historic messages" do
    visit_page_and_create
    fill_in "message", with: "World"
    click_button "Create"
    expect(page).to have_content "Hello"
    expect(page).to have_content "World"
  end

  scenario "messages entered only have 20 chars when first shown" do
    long_message_create
    expect(page).to have_content "This message is over"
  end

  scenario "messages shown fully once selected" do
    long_message_create_2
    click_link("This message is also")
    expect(page).to have_content "This message is also over 20 characters long"
  end

end

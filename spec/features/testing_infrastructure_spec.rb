feature 'testing' do
  scenario 'testing our framework' do
    visit '/'
    expect(page).to have_text 'FACESMASH'
  end

  scenario "Can view form to fill in" do
    visit "/"
    fill_in "message", with: "Hello"
    click_button "Submit"
    expect(page).to have_content "Hello"
  end

  scenario "can view historic messages" do
    visit "/"
    fill_in "message", with: "Hello"
    click_button "Submit"
    fill_in "message", with: "World"
    click_button "Submit"
    expect(page).to have_content "Hello"
    expect(page).to have_content "World"
  end
end

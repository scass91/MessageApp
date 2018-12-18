feature 'testing' do
  scenario 'testing our framework' do
    visit '/'
    expect(page).to have_text 'test successfully set up'
  end

  scenario "Can view form to fill in" do
    visit "/"
    fill_in "message", with: "Hello"
    click_button "Submit"
    expect(page).to have_content "Hello"
  end

end

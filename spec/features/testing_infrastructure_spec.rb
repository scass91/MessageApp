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

  scenario 'previous messages are stored and can be viewed' do
    visit "/"
    fill_in "message", with: "Hello"
    click_button "Submit"
    expect(history.size).to eq 1
  end


end

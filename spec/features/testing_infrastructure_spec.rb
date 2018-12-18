feature 'testing' do
  scenario 'testing our framework' do
    visit '/'
    expect(page).to have_text 'test successfully set up'
  end
end

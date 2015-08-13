require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptons, false)

describe('the artist_integration_spec', {:type => :feature}) do
  it('ADD NEW ARTIST') do
    visit('/')
    click_link('ADD NEW ARTIST')
      fill_in('name', :with => "Tame Impala")
      click_button('Add Artist')
      click_link('See Artist List')
      expect(page).to have_content("Tame Impala")
  end
end

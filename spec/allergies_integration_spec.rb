require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the allergies path', {:type => :feature}) do
  it('will accept an allergy score and return the specific allergies someone has') do
    visit('/')
    fill_in('score', :with => '82')
    click_button('Go')
    expect(page).to have_content(['pollen', 'tomatoes', 'peanuts'])
  end
end

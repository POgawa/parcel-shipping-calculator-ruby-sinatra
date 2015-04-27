require ('parcels.rb')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('calculate shipping path') do
  it('takes the form entry and shows the result page', type: 'feature') do
    visit('/')
    fill_in('width', with: '12')
    fill_in('length', with: '15')
    fill_in('heigth', with: '15')
    fill_in('weight', with: '20')
    click_button('Calculate!')
    expect(page).to have_content("Your shipping cost!")
  end
end

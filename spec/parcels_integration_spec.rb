require ('parcels.rb')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

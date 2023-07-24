class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Require necessary gems and libraries
  require 'sinatra/base'
  require 'sinatra/activerecord'

  # Require your controllers
  require_relative 'patients_controller'
  require_relative 'appointments_controller'
  require_relative 'doctors_controller'
  require_relative 'departments_controller'
  require_relative 'categories_controller'
  require_relative 'invoices_controller'

  # Your application settings and configuration can go here

  # Optionally, you can add some helpers or middlewares here

  # Optionally, you can also set a layout or other settings here

  # Run the application
  # Only if running the app directly (not when running tests)
  # run! if __FILE__ == $0
end

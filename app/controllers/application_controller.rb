class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


# Require necessary gems and libraries
require 'sinatra/base'
require 'sinatra/activerecord'

# Require your controllers
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/patients_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/appointments_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/doctors_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/departments_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/categories_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/invoices_controller.rb'

# Configure database connection
# Set your database configuration based on your database setup
# Example: ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'your_database.db')

# Your application settings and configuration can go here

# Optionally, you can add some helpers or middlewares here

# Optionally, you can also set a layout or other settings here

# Run the application
# Only if running the app directly (not when running tests)
# run! if __FILE__ == $0
  # GET route to fetch all appointments
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end

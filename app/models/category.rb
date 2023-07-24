# models/category.rb
class Category < ActiveRecord::Base
    has_many :patients
  
    # Attributes: name, description, priority level (e.g., emergency, urgent, routine), etc.
    # Add validations if required.
  end
  
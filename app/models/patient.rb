# models/patient.rb
class Patient < ActiveRecord::Base
    has_many :appointments
    belongs_to :category
  
    # Attributes: name, age, gender, contact information, medical history, insurance details, etc.
  
  end
  
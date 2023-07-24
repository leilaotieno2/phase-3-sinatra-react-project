# models/doctor.rb
class Doctor < ActiveRecord::Base
    has_many :appointments
    has_many :doctor_departments
    has_many :departments, through: :doctor_departments
  
    # Attributes: name, specialization, contact information, etc.
    # Add validations if required.
  end
  
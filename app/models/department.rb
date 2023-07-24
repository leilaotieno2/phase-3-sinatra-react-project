# models/department.rb
class Department < ActiveRecord::Base
    has_many :doctor_departments
    has_many :doctors, through: :doctor_departments
    has_many :appointments
  
    # Attributes: name, description, head of department, etc.
    # Add validations if required.
  end
  
# models/appointment.rb
class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :doctor
    belongs_to :department
  
    # Attributes: date and time, reason, status (confirmed, canceled, completed), etc.
  
  end
  
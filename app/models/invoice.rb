# models/invoice.rb
class Invoice < ActiveRecord::Base
  belongs_to :patient
  
  # Attributes: invoice_date, due_date, total_amount, patient_id, appointment_id
  # Add validations if required.
end

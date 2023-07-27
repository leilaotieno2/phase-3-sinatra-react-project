# models/invoice.rb
class Invoice < ActiveRecord::Base
  belongs_to :patient

  # Attributes: invoice_date, due_date, total_amount, patient_id, appointment_id

  # Validations
  validates :invoice_date, presence: true
  validates :due_date, presence: true
  validates :total_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Custom validation to ensure that the due date is after the invoice date
  validate :due_date_must_be_after_invoice_date

  private

  def due_date_must_be_after_invoice_date
    if invoice_date && due_date && due_date <= invoice_date
      errors.add(:due_date, "must be after the invoice date.")
    end
  end
end

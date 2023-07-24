class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.date :invoice_date
      t.date :due_date # Add this line to create the 'due_date' column
      t.decimal :total_amount, precision: 10, scale: 2
      t.references :patient, foreign_key: true
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end

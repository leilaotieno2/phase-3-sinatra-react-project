
class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :contact_info
      t.text :medical_history
      t.string :insurance_details
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

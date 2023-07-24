# db/migrate/<timestamp>_create_doctors.rb

class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.string :contact_info

      t.timestamps
    end
  end
end

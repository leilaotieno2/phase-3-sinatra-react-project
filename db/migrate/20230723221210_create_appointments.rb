# db/migrate/<timestamp>_create_appointments.rb

class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.time :start_time
      t.time :end_time
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end

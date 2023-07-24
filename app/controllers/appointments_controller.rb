class AppointmentsController < Sinatra::Base
  set :default_content_type, 'application/json'

  # GET route to fetch all appointments
  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

  # POST route to create a new appointment
  post "/appointments" do
    appointment = Appointment.create(
      appointment_date: params[:appointment_date],
      start_time: params[:start_time],
      # Add other attributes for the Appointment model here
    )
    appointment.to_json
  end

  # PUT route to update an existing appointment
  put "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update(
      appointment_date: params[:appointment_date],
      start_time: params[:start_time],
      # Add other attributes for the Appointment model here
    )
    appointment.to_json
  end

  # DELETE route to delete an appointment
  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    { message: "Appointment deleted successfully!" }.to_json
  end
end

# app/controllers/doctors_controller.rb

class DoctorsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # GET route to fetch all doctors
    get "/doctors" do
      doctors = Doctor.all
      doctors.to_json
    end
  
    # POST route to create a new doctor
    post "/doctors" do
      doctor = Doctor.create(
        name: params[:name],
        specialization: params[:specialization],
        # Add other attributes for the Doctor model here
      )
      doctor.to_json
    end
  
    # PUT route to update an existing doctor
    put "/doctors/:id" do
      doctor = Doctor.find(params[:id])
      doctor.update(
        name: params[:name],
        specialization: params[:specialization],
        # Add other attributes for the Doctor model here
      )
      doctor.to_json
    end
  
    # DELETE route to delete a doctor
    delete "/doctors/:id" do
      doctor = Doctor.find(params[:id])
      doctor.destroy
      { message: "Doctor deleted successfully!" }.to_json
    end
  end
  
# app/controllers/patients_controller.rb

class PatientsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # GET route to fetch all patients
    get "/patients" do
      patients = Patient.all
      patients.to_json
    end
  
    # POST route to create a new patient
    post "/patients" do
      patient = Patient.create(
        name: params[:name],
        age: params[:age],
        gender: params[:gender],
        # Add other attributes for the Patient model here
        contact_info: params[:contact_info],
    medical_history: params[:medical_history],
    insurance_details: params[:insurance_details],
    category_id: params[:category_id],
      )
      patient.to_json
    end
  
    # PUT route to update an existing patient
    put "/patients/:id" do
      patient = Patient.find(params[:id])
      patient.update(
        name: params[:name],
        age: params[:age],
        gender: params[:gender],
        # Add other attributes for the Patient model here
      )
      patient.to_json
    end
  
    # DELETE route to delete a patient
    delete "/patients/:id" do
      patient = Patient.find(params[:id])
      patient.destroy
      { message: "Patient deleted successfully!" }.to_json
    end
  end
  
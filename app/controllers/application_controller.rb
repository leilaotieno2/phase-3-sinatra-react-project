class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


# Require necessary gems and libraries
require 'sinatra/base'
require 'sinatra/activerecord'

# Require your controllers
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/patients_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/appointments_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/doctors_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/departments_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/categories_controller.rb'
require_relative '/home/leila/development/code/phase-3/phase-3-sinatra-react-project/app/controllers/invoices_controller.rb'


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
   # GET route to fetch all invoices
   get "/invoices" do
    invoices = Invoice.all
    invoices.to_json
  end

  # POST route to create a new invoice
  post "/invoices" do
    invoice = Invoice.create(
      invoice_date: params[:invoice_date],
      due_date: params[:due_date],
      total_amount: params[:total_amount],
      patient_id: params[:patient_id],
      appointment_id: params[:appointment_id]
    )
    invoice.to_json
  end

  # PUT route to update an existing invoice
  put "/invoices/:id" do
    invoice = Invoice.find(params[:id])
    invoice.update(
      invoice_date: params[:invoice_date],
      due_date: params[:due_date],
      total_amount: params[:total_amount],
      patient_id: params[:patient_id],
      appointment_id: params[:appointment_id]
    )
    invoice.to_json
  end
  # DELETE route to delete an invoice
  delete "/invoices/:id" do
    invoice = Invoice.find(params[:id])
    invoice.destroy
    { message: "Invoice deleted successfully!" }.to_json
  end
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
  # GET route to fetch all departments
  get "/departments" do
    departments = Department.all
    departments.to_json
  end

  # POST route to create a new department
  post "/departments" do
    department = Department.create(
      name: params[:name],
      # Add other attributes for the Department model here
    )
    department.to_json
  end

  # PUT route to update an existing department
  put "/departments/:id" do
    department = Department.find(params[:id])
    department.update(
      name: params[:name],
      # Add other attributes for the Department model here
    )
    department.to_json
  end

  # DELETE route to delete a department
  delete "/departments/:id" do
    department = Department.find(params[:id])
    department.destroy
    { message: "Department deleted successfully!" }.to_json
  end
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
   # GET route to fetch all categories
   get "/categories" do
    categories = Category.all
    categories.to_json
  end

  # POST route to create a new category
  post "/categories" do
    category = Category.create(
      name: params[:name],
      # Add other attributes for the Category model here
    )
    category.to_json
  end

  # PUT route to update an existing category
  put "/categories/:id" do
    category = Category.find(params[:id])
    category.update(
      name: params[:name],
      # Add other attributes for the Category model here
    )
    category.to_json
  end

  # DELETE route to delete a category
  delete "/categories/:id" do
    category = Category.find(params[:id])
    category.destroy++-

    { message: "Category deleted successfully!" }.to_json
  end
end







  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


 
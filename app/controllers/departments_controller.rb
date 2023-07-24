# app/controllers/departments_controller.rb

class DepartmentsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
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
  end
  
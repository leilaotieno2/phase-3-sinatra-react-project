# app/controllers/categories_controller.rb

class CategoriesController < Sinatra::Base
    set :default_content_type, 'application/json'
    
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
      category.destroy
      { message: "Category deleted successfully!" }.to_json
    end
  end
  
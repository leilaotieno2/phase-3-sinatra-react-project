# models/category.rb
class Category < ActiveRecord::Base
  has_many :patients



  # Validations
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }

end

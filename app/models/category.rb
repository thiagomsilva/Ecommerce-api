class Category < ApplicationRecord
  include NameSearchable # incluindo o concern

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end

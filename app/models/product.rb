class Product < ApplicationRecord
  validates :name, presence: true,
            uniqueness: { message: "already exists" }
  validates :quantity, presence: true
end

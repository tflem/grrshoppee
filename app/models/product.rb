class Product < ApplicationRecord
  validates :name, presence: true,
    uniqueness: {message: "already exists",
                 case_sensitive: false}
  validates :quantity, presence: true
end

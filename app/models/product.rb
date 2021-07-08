class Product < ApplicationRecord
  belongs_to :meal, optional: true
end
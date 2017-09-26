class Book < ApplicationRecord
  has_and_belongs_to_many :authors

  accepts_nested_attributes_for :authors
end

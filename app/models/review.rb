class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_numericality_of :stars, greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true
  validates_presence_of :text
  validates_uniqueness_of :book, scope: :user
end

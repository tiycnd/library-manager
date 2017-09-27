class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_many :reviews

  def average_review
    return nil if reviews.count == 0
    reviews.map { |review| review.stars }.sum.to_f / reviews.count
  end
end

class Article < ApplicationRecord
  has_many :comments

  scope :latest, lambda {
    order(:created_at).last
  }
end

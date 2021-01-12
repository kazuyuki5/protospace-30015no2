class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: ture
  validates :catch_copy, presence: ture
  validates :concept, presence: ture
  validates :image, presence: ture
end

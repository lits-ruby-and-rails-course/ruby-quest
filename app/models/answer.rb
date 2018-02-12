class Answer < ApplicationRecord
#  validates :title
  has_and_belongs_to_many :questions
  has_many :tags, as: :tagable

end

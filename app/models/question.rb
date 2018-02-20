class Question < ApplicationRecord
	validates :title, presence: true, length: { minimum: 1 }

  has_and_belongs_to_many :answers
  has_and_belongs_to_many :quizzes
  has_many :tags, as: :tagable
  accepts_nested_attributes_for :answers
end

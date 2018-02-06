class Question < ApplicationRecord
	validates :title, presence: true, length: { minimum: 1 }

  has_many :answers
  accepts_nested_attributes_for :answers
end

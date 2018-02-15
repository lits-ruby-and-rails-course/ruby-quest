class Exam < ApplicationRecord
	has_many :quizzes
	validates :title, presence: true, length: { minimum: 1 }
end
class Exam < ApplicationRecord
	validates :title, presence: true, length: { minimum: 1 }
end
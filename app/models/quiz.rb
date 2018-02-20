class Quiz < ApplicationRecord
  has_many :tags, as: :tagable
  has_and_belongs_to_many :exams
end

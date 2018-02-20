class Quiz < ApplicationRecord
  has_many :tags, as: :tagable
  has_and_belongs_to_many :exams
  has_and_belongs_to_many :questions
  accepts_nested_attributes_for :questions  
end

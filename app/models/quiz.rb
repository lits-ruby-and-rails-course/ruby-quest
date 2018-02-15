class Quiz < ApplicationRecord
  has_many :tags, as: :tagable
  #belongs_to :exam
end

class Quiz < ApplicationRecord
  has_many :tags, as: :tagable
end

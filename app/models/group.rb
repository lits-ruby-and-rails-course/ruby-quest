class Group < ApplicationRecord
has_many :users	
	validates :title, presence: true,
                    length: { minimum: 5 }
end

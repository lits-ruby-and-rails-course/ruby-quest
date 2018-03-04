class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :text
  has_many :answers
end

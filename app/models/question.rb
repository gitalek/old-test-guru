class Question < ApplicationRecord
  belongs_to :test

  has_many :answers
  has_many :right_answers, -> { where(correct: true) }, class_name: 'Answer'
end

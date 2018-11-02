class Question < ApplicationRecord
  ANSWERS_MAX_LIMIT = 4
  belongs_to :test

  has_many :answers
  has_many :right_answers, -> { where(correct: true) }, class_name: 'Answer'

  validates :body, presence: true
end

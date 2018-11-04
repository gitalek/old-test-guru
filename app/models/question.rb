class Question < ApplicationRecord
  ANSWERS_MAX_LIMIT = 4
  belongs_to :test

  has_many :answers

  validates :body, presence: true
end

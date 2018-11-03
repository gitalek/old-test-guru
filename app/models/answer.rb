class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_answers_limit, on: :create


  private

  def validate_answers_limit
    limit = Question::ANSWERS_MAX_LIMIT
    errors.add(:base, "Quesiton with id #{question_id} has already achieved maximum answers limit - #{limit}") if question.answers.count >= limit
  end
end

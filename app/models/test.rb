class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user, foreign_key: :creator_id

  has_many :questions
  # has_and_belongs_to_many :users
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.select_by_category(category)
    self.joins(:category)
      .where(categories: { title: category })
      .order(title: :desc)
      .pluck(:title)
  end

  scope :simple, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard,   -> { where(level: 3..Float::INFINITY) }
end

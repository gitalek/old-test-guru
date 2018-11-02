class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user, foreign_key: :creator_id

  has_many :questions
  # has_and_belongs_to_many :users
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :level, numericality: { only_integer: true }
  validates :title, presence: true
  validate :validate_level_title_uniqueness

  # def self.select_by_category(category)
  #   self.joins(:category)
  #     .where(categories: { title: category })
  #     .order(title: :desc)
  #     .pluck(:title)
  # end
  scope :by_category, -> (category) {
    joins(:category)
    .where(categories: { title: category })
    .order(title: :desc)
    .pluck(:title)
  }

  scope :simple, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard,   -> { where(level: 3..Float::INFINITY) }

  scope :by_level, -> (level) { where(level: level) }

  private

  def validate_level_title_uniqueness
    records = self.class.where(level: level, title: title)
    errors[:base] << 'not uniq attributes' unless records.empty?
  end
end

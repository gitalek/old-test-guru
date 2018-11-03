class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user, foreign_key: :creator_id

  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :level, numericality: { only_integer: true }
  validates :title, presence: true
  validate :validate_level_title_uniqueness
  validates :level, uniqueness: {
    scope: :title,
    message: 'not a unique combination of level and title attributes'
  }

  scope :by_level, -> (level) { where(level: level) }
  scope :simple, -> { by_level(0..1) }
  scope :medium, -> { by_level(2..4) }
  scope :hard,   -> { by_level(3..Float::INFINITY) }


  scope :by_category, -> (category) {
    joins(:category)
    .where(categories: { title: category })
  }

  def self.select_by_category(category)
      by_category(category)
      .order(title: :desc)
      .pluck(:title)
  end

  private

  def validate_level_title_uniqueness
    records = self.class.where(level: level, title: title)
    errors[:base] << 'not uniq attributes' unless records.empty?
  end
end

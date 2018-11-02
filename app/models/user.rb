class User < ApplicationRecord
  has_many :maked_tests, class_name: 'Test', foreign_key: :creator_id
  # has_and_belongs_to_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users

  validates :email, presence: true

  # has_many :tests_by_level, ->(level) { where(level: level) }, class_name: 'Test'
  def tests_by_level(level)
    tests.where(level: level)
  end
end

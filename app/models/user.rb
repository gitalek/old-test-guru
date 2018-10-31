class User < ApplicationRecord
  has_many :maked_tests, class_name: "Test"
  # has_and_belongs_to_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users

  def tests_by_level(level)
    tests.where(level: level)
  end
end

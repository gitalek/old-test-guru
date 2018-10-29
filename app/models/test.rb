class Test < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users

  def self.select_by_category(category)
    self.joins(:category)
      .where('categories.title = ?', category)
      .order(title: :desc)
      .pluck(:title)
  end
end

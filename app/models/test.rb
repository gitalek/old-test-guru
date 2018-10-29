class Test < ApplicationRecord
  belongs_to :category

  def self.select_by_category(category)
    self.joins(:category)
      .where('categories.title = ?', category)
      .order(title: :desc)
      .pluck(:title)
  end
end

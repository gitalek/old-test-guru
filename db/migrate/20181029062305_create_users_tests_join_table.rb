class CreateUsersTestsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users_tests, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :tests, index: true
    end
  end
end

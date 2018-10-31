class AddCreatorRefToTests < ActiveRecord::Migration[5.2]
  def change
    add_reference :tests, :creator, foreign_key: { to_table: :users }
  end
end

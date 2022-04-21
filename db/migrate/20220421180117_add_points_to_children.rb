class AddPointsToChildren < ActiveRecord::Migration[6.1]
  def change
    add_column :children, :points, :integer
  end
end

class AddFChildKeyToTask2 < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :child_id, :integer
  end
end

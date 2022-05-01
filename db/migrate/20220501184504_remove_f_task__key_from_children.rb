class RemoveFTaskKeyFromChildren < ActiveRecord::Migration[6.1]
  def change
    remove_column :children, :task_id, :integer
  end
end

class AddFTaskKeyToChildren < ActiveRecord::Migration[6.1]
  def change
    add_column :children, :task_id, :integer
  end
end

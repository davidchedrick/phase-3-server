class DeleteFChildKeyToChild < ActiveRecord::Migration[6.1]
  def change
    remove_column :children, :child_id, :integer
  end
end

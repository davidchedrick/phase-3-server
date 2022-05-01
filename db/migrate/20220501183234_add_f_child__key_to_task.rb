class AddFChildKeyToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :children, :child_id, :integer
  end
end

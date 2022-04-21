class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :body
      t.integer :value
      t.timestamps
    end
  end
end

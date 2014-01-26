class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :body
      t.date   :deadline_at
      t.timestamps
    end
  end
end

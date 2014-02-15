class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :summary
      t.text :details

      t.timestamps
    end
  end
end

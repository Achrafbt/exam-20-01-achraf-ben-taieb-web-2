class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :status
      t.string :description
      t.integer :priority
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end

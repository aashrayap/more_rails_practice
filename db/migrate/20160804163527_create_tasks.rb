class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.text :deadline


      t.timestamps null: false
    end
  end
end

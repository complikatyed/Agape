class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :date
      t.string :scripture
      t.text :description

      t.timestamps null: false
    end
  end
end

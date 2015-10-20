class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :title
      t.string :content
      t.string :postedby

      t.timestamps null: false
    end
  end
end

class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :prayfor
      t.string :content
      t.string :postedby

      t.timestamps null: false
    end
  end
end

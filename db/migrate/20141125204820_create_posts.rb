class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer     :icon_id
      t.references  :user
      t.references  :icon_color

      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :color
      t.integer     :icon_reference_id
      t.references  :user

      t.timestamps null: false
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :post
      t.references :icon
      t.references :icon_color

      t.timestamps null: false
    end
  end
end

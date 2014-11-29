class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :color
      t.references :user
      t.references :post
      t.references :icon

      t.timestamps null: false
    end
  end
end

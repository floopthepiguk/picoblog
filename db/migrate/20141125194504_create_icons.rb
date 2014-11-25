class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string    :name
      t.string    :code
      t.timestamps null: false
    end
  end
end

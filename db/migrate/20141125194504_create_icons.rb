class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.integer   :reference_id
      t.string    :name
      t.string    :code
      t.timestamps null: false
    end

    add_index(:icons, :reference_id, unique: true)
  
  end
end

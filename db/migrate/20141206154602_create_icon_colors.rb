class CreateIconColors < ActiveRecord::Migration
  def change
    create_table :icon_colors do |t|
      t.string :name
      t.string :hex
      t.timestamps null: false
    end


    # Specify colors here

    colors = {
      red:    '#FF0000',
      green:  '#00FF00',
      blue:   '#0000FF'
    }
      

    #Import specified colors
    
    colors.each do |name, hex|
      IconColor.create(name: name, hex: hex)
    end

  end
end

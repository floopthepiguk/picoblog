class CreateIconColors < ActiveRecord::Migration
  def change
    create_table :icon_colors do |t|
      t.string :name
      t.string :hex
      t.timestamps null: false
    end


    # Specify colors here

    colors = {
      pink:     '#CE45F8',
      blue:     '#326F9F',
      orange:   '#EA9656',
      green:    '#2B7B4C',
      red:      '#72282B',
      grey:     '#6C6364',
      yellow:   '#EFBD4F'
    }
      

    #Import specified colors
    
    colors.each do |name, hex|
      IconColor.create(name: name, hex: hex)
    end

  end
end

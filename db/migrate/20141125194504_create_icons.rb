class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string    :name
      t.string    :code
      t.timestamps null: false
    end

    # 
    # Import Icon reference file
    #
    YAML.load_file(File.join(Rails.root, 'config', 'icons.yml')).each do |k,v|
      icon = Icon.new(name: k, code: v['code'])
      icon.id = v['ref']
      icon.save
    end

  end
end

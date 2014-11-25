# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' , { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

YAML.load_file(File.join(Rails.root, 'config', 'icons.yml')).each do |k,v|
  icon = Icon.new(name: k, code: v['code'])
  icon.id = v['ref']
  icon.save
end


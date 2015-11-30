# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.delete_all
open("cities.txt").read.each_line do |city|
  name, code = city.chomp.split(",")
  City.create!(:name => name)
  end
end

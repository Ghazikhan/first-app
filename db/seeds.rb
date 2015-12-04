# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# open("/home/murtaza/project/first-app/app/assets/files/cities.txt").read.each_line do |city|
#   name, code = city.chomp.split(",")
#   City.create!(:name => name)
# end

# open("/home/murtaza/project/first-app/app/assets/files/organizations.txt").read.each_line do |organization|
#   name, code = organization.chomp.split(",")
#   Organization.create!(:name => name)
# end

open("/home/murtaza/Desktop/asdf.csv").read.each_line do |institute|
  name, code = institute.chomp.split(",")
  Institute.create!(:name => name,
                       :city_id => city_id)
end

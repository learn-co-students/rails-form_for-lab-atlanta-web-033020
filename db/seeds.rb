# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

brandon = Student.create(first_name: "Brandon", last_name: "Brown")
ashley = Student.create(first_name: "Ashley", last_name: "Moore")
robert = Student.create(first_name: "Robert", last_name: "Phillips")

flatiron = SchoolClass.create(title: "Flatiron", room_number: 301)
flatiron = SchoolClass.create(title: "Georgia Tech", room_number: 402)
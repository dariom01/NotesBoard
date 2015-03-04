# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  format = Format.create(name: "1 Section")
  Title.create(text: "Heading 1",format: format)
  
  format = Format.create(name: "2 Section")
  Title.create(text: "Heading 1",format: format)
  Title.create(text: "Heading 2",format: format)
  
  format = Format.create(name: "3 Section")
  Title.create(text: "Heading 1",format: format)
  Title.create(text: "Heading 2",format: format)
  Title.create(text: "Heading 3",format: format)
  
    format = Format.create(name: "4 Section")
  Title.create(text: "Heading 1",format: format)
  Title.create(text: "Heading 2",format: format)
  Title.create(text: "Heading 3",format: format)
  Title.create(text: "Heading 4",format: format)
  
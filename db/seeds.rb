# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Administrator.create(username: "example user", password: "12345")

tutorial = Tutorial.create(
	title: "Introduction to C#",
	language: "C#",
	description: "An in-depth introduction to C# and the .NET framework.",
)

lesson1 = Lesson.create(
	content: File.read("./storage/tutorials/tutorial_00001.html")
)

tutorial.lessons << lesson1

admin.tutorials << tutorial

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(name: "scottms724", username: "scottms724@gmail.com", img_url: "https://st.depositphotos.com/1001911/1222/v/600/depositphotos_12221489-stock-illustration-big-smile-emoticon.jpg", password: "pass123")
User.create(name: "adamds", username: "adamds1224@gmail.com", img_url: "https://previews.123rf.com/images/vectorkif/vectorkif1802/vectorkif180200028/94910807-business-man-with-blond-hair-cartoon-character-handsome-businessman-in-suit-waving-hand-vector-illus.jpg", password: "pass123")

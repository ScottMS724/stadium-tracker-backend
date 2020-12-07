# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "scottms724", username: "scottms724@gmail.com", img_url: "https://st.depositphotos.com/1001911/1222/v/600/depositphotos_12221489-stock-illustration-big-smile-emoticon.jpg", password: "pass123")
User.create(name: "adamds", username: "adamds1224@gmail.com", img_url: "https://previews.123rf.com/images/vectorkif/vectorkif1802/vectorkif180200028/94910807-business-man-with-blond-hair-cartoon-character-handsome-businessman-in-suit-waving-hand-vector-illus.jpg", password: "pass123")

Stadium.create(name: "Citi Field", city: "Queens, New York City", image: "https://www.ballparksofbaseball.com/wp-content/uploads/2016/03/citi17951.jpg", user_id: 1)  
Stadium.create(name: "Citizens Bank Park", city: "Philadelphia, Pennsylvania", image: "https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/patriotleague.org/images/2019/12/6/Phillues_Citizens_Bank_Park_home_plate_M_Kennedy_VP_2200x1237.jpg", user_id: 2)
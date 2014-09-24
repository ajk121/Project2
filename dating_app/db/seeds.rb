# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.delete_all
  User.create(email: "andrew@gmail.com", password: "password", password_confirmation: "password", name: "Andrew Holmes", age: "23", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "LRUG", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "340", height: "182cm", github_id: "andy_boss", about_me: "Drop me a line of code to find out", smoker: "No" )

  User.create(email: "sam@gmail.com", password: "password", password_confirmation: "password", name: "Sam Deen", age: "29", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "LRUG", front_backend:"Front",favourite_language: "Rails",stackoverflow_score: "552", height: "179", github_id: "sam.rb", about_me: "Drop me a line of code to find out", smoker: "No" )

  User.create(email: "david@gmail.com", password: "password", password_confirmation: "password", name: "David Letterman", age: "36", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "BRUG", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "1200", height: "184", github_id: "dl.129", about_me: "Drop me a line of code to find out", smoker: "No" )


  User.create(email: "paul@gmail.com", password: "password", password_confirmation: "password", name: "Paul Gracey", age: "32", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "LRUG", front_backend:"Front",favourite_language: "Rails",stackoverflow_score: "552", height: "173", github_id: "paul.php", about_me: "Drop me a line of code to find out", smoker: "Yes" )

  User.create(email: "chris@gmail.com", password: "password", password_confirmation: "password", name: "Chris Marsh", age: "41", gender: "Male", city: "Manchester", sex_preference: "Female", meet_ups: "MRUG", front_backend:"Backend",favourite_language: "Javascript",stackoverflow_score: "552", height: "173", github_id: "paul.php", about_me: "Drop me a line of code to find out", smoker: "Yes" )

  User.create(email: "peter@gmail.com", password: "password", password_confirmation: "password", name: "Peter Renold", age: "49", gender: "Male", city: "Global - Jet Setter", sex_preference: "Female", meet_ups: "My Place", front_backend:"Everything",favourite_language: "All",stackoverflow_score: "4552", height: "183", github_id: "p.renold.digital", about_me: "Sleep, eat, drink & work tech", smoker: "No" )


  User.create(email: "donny@gmail.com", password: "password", password_confirmation: "password", name: "Donny Brasco", age: "43", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "LRUG, MRUG, fugazi.js, Tech Arts", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "390", height: "187", github_id: "fugazi.tech", about_me: "I turn code into £££, all things lavish", smoker: "No" )


  User.create(email: "bobby@gmail.com", password: "password", password_confirmation: "password", name: "Bobby Va Va Voom", age: "39", gender: "Male", city: "Paris", sex_preference: "Female", meet_ups: "Start_ups.Paree", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "390", height: "175", github_id: "vavavoom", about_me: "Hey bobby whats french for has_many :money", smoker: "No" )

  User.create(email: "jackie@gmail.com", password: "password", password_confirmation: "password", name: "Jackie Chan", age: "33", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "NY Tech, Start_ups.Paree, Tech Arts", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "550", height: "180", github_id: "onemorething", about_me: "function()?", smoker: "No" )

  User.create(email: "mickey@gmail.com", password: "password", password_confirmation: "password", name: "Mickey", age: "39", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "Start_ups.Paree", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "450", height: "186", github_id: "vavavoom", about_me: "I build Daags", smoker: "No" )

  User.create(email: "lisa@gmail.com", password: "password", password_confirmation: "password", name: "Lisa Smith", age: "39", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Tech Arts", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "450", height: "155", github_id: "lisa.20", about_me: "Tech Super Women", smoker: "No" )
  


  User.create(email: "alexia@gmail.com", password: "password", password_confirmation: "password", name: "Alexia", age: "25", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "MRUG", front_backend:"Front",favourite_language: "Rails",stackoverflow_score: "25", height: "170", github_id: "alexia.tech", about_me: "Fun loving tech girl", smoker: "No" ) 


  User.create(email: "amanda@gmail.com", password: "password", password_confirmation: "password", name: "Amanda Piers", age: "29", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "NY Tech Stars", front_backend:"Front",favourite_language: "Rails",stackoverflow_score: "40", height: "172", github_id: "amanda.p", about_me: "Can you keep up?", smoker: "No" ) 

  User.create(email: "laura@gmail.com", password: "password", password_confirmation: "password", name: "Laura Andrews", age: "39", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Codebar ", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "490", height: "168", github_id: "laura.and.tech", about_me: "Unbeatable Tech Guru", smoker: "No" ) 

  User.create(email: "samantha@gmail.com", password: "password", password_confirmation: "password", name: "Samantha Stuart", age: "27", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Tech Arts", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "106", height: "164", github_id: "sam.stuart", about_me: "looking for my tech superhero", smoker: "No" ) 

  User.create(email: "katherine@gmail.com", password: "password", password_confirmation: "password", name: "Katherine Cole", age: "31", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "LRUG", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "210", height: "179", github_id: "kat.c", about_me: "I'm a programming ninja", smoker: "No" ) 

  User.create(email: "Elizabeth@gmail.com", password: "password", password_confirmation: "password", name: "Elizabeth Bennet", age: "35", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Tech Arts", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "800", height: "179", github_id: "bennet.e", about_me: "The modern day tech Picasso ", smoker: "No" ) 

  User.create(email: "stephanie@gmail.com", password: "password", password_confirmation: "password", name: "Stephanie Jacobs", age: "25", gender: "Female", city: "Madrid", sex_preference: "Male", meet_ups: "LRUG", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "No" ) 

  User.create(email: "Kate.a@gmail.com", password: "password", password_confirmation: "password", name: "Katie Andrews", age: "29", gender: "Female", city: " Madrid", sex_preference: "Male", meet_ups: "Codebar", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "No" ) 

  User.create(email: "andrea@gmail.com", password: "password", password_confirmation: "password", name: "Andrea Smith", age: "29", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "MUNICHRUG", front_backend:"Front",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "No" ) 

  User.create(email: "francesca@gmail.com", password: "password", password_confirmation: "password", name: "Francesca Rodriguez", age: "33", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "MadridRUG", front_backend:"Backend",favourite_language: "Rails",stackoverflow_score: "302", height: "174", github_id: "fran.sp", about_me: "I hack anything & everyone", smoker: "No" ) 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create(email: "donny@gmail.com", password: "password", password_confirmation: "password", name: "Donny Brasco", age: "43", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "LRUG, MRUG, fugazi.js, Tech Arts", front_backend: "Front-End",favourite_language: "Ruby",stackoverflow_score: "390", height: "187", github_id: "fugazi.tech", about_me: "I turn code into £££, all things lavish", role: "basic" )

User.create(email: "donny@gmail.com", password: "password", password_confirmation: "password", name: "Donny Brasco", age: "43", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "LRUG, MRUG, forgayze.js, Tech Arts", front_backend: "Front-End",favourite_language: "Ruby",stackoverflow_score: "390", height: "187", github_id: "forgayze.tech", about_me: "I turn code into £££, all things lavish", role: "basic" )

User.create(email: "bobby@gmail.com", password: "password", password_confirmation: "password", name: "Bobby Va Va Voom", age: "39", gender: "Male", city: "Paris", sex_preference: "Female", meet_ups: "LRUG, MRUG, Voom Tech, Start_ups.Paree Tech Arts", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "390", height: "175", github_id: "vavavoom", about_me: "Hey bobby whats french for has_many :money", role: "basic" )

User.create(email: "jackie@gmail.com", password: "password", password_confirmation: "password", name: "Jackie Chan", age: "33", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "NY Tech, Start_ups.Paree, Tech Arts", front_backend: "Back-End",favourite_language: "Javascript",stackoverflow_score: "550", height: "180", github_id: "onemorething", about_me: "function(){?} ", role: "basic" )

User.create(email: "mickey@gmail.com", password: "password", password_confirmation: "password", name: "Mickey", age: "39", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "MRUG, Voom Tech,  Start_ups.Paree Tech Arts", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "450", height: "186", github_id: "vavavoom", about_me: "I build Daags", role: "basic" )

User.create(email: "lisa@gmail.com", password: "password", password_confirmation: "password", name: "Lisa Smith", age: "39", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "MRUG, Voom Tech,  Start_ups.Paree Tech Arts", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "450", height: "155", github_id: "lisa.20", about_me: "Tech Super Women", role: "basic" ) 

User.create(email: "donny@gmail.com", password: "password", password_confirmation: "password", name: "Donny Brasco", age: "43", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "LRUG, MRUG, forgayze.js, Tech Arts", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "390", height: "187", github_id: "forgayze.tech", about_me: "I turn code into £££, all things lavish", smoker: "Non Smoker", role: "basic" )

User.create(email: "bobby@gmail.com", password: "password", password_confirmation: "password", name: "Bobby Va Va Voom", age: "39", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "LRUG, MRUG, Voom Tech, Start_ups.Paree Tech Arts", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "390", height: "175", github_id: "vavavoom", about_me: "Hey bobby whats french for has_many :money", smoker: "Smoker", role: "basic" )

User.create(email: "jackie@gmail.com", password: "password", password_confirmation: "password", name: "Jackie Chan", age: "33", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "NY Tech, Start_ups.Paree, Tech Arts", front_backend:"§-End",favourite_language: "PHP",stackoverflow_score: "550", height: "180", github_id: "onemorething", about_me: "function(){?} ", smoker: "Non Smoker", role: "basic" )

User.create(email: "mickey@gmail.com", password: "password", password_confirmation: "password", name: "Mickey", age: "39", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "MRUG, Voom Tech,  Start_ups.Paree Tech Arts", front_backend:"Back-End",favourite_language: "Javascript",stackoverflow_score: "450", height: "186", github_id: "vavavoom", about_me: "I build Daags", smoker: "Smoker", role: "basic" )

User.create(email: "lisa@gmail.com", password: "password", password_confirmation: "password", name: "Lisa Smith", age: "39", gender: "Female", city: "NY", sex_preference: "Male", meet_ups: "MRUG, Voom Tech,  Start_ups.Paree Tech Arts", front_backend:"Back-End",favourite_language: "Javascript",stackoverflow_score: "450", height: "155", github_id: "lisa.20", about_me: "Tech Super Women", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "alexia@gmail.com", password: "password", password_confirmation: "password", name: "Alexia", age: "25", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "MRUG, Voom Tech,Tech Arts", front_backend:"Front-End",favourite_language: "PHP",stackoverflow_score: "25", height: "170", github_id: "alexia.tech", about_me: "Fun loving tech girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "amanda@gmail.com", password: "password", password_confirmation: "password", name: "Amanda Piers", age: "29", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, NY Tech Stars", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "40", height: "172", github_id: "amanda.p", about_me: "Can you keep up?", role: "basic" ) 

User.create(email: "laura@gmail.com", password: "password", password_confirmation: "password", name: "Laura Andrews", age: "39", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts,Codebar ", front_backend: "Front-End",favourite_language: "Ruby",stackoverflow_score: "490", height: "168", github_id: "laura.and.tech", about_me: "Unbeatable Tech Guru", role: "basic" ) 

User.create(email: "samantha@gmail.com", password: "password", password_confirmation: "password", name: "Samantha Stuart", age: "27", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, Codebar, ", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "106", height: "164", github_id: "sam.stuart", about_me: "looking for my tech superhero", role: "premium" ) 

User.create(email: "katherine@gmail.com", password: "password", password_confirmation: "password", name: "Katherine Cole", age: "31", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, Codebar, LRUG ", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "210", height: "179", github_id: "kat.c", about_me: "I'm a programming ninja", role: "premium" ) 

User.create(email: "donny@gmail.com", password: "password", password_confirmation: "password", name: "Donny Brasco", age: "43", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "LRUG, MRUG, fugazi.js, Tech Arts", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "390", height: "187", github_id: "fugazi.tech", about_me: "I turn code into £££, all things lavish", smoker: "Non Smoker", role: "premium" )

User.create(email: "Elizabeth@gmail.com", password: "password", password_confirmation: "password", name: "Elizabeth Bennet", age: "35", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Tech Arts, Codebar, LRUG, MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "800", height: "179", github_id: "bennet.e", about_me: "The modern day tech Picasso ", role: "premium" ) 

User.create(email: "stephanie@gmail.com", password: "password", password_confirmation: "password", name: "Stephanie Jacobs", age: "25", gender: "Female", city: "Madrid", sex_preference: "Male", meet_ups: "Tech Arts, Codebar, LRUG, MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", role: "premium" ) 

User.create(email: "bobby@gmail.com", password: "password", password_confirmation: "password", name: "Bobby Va Va Voom", age: "39", gender: "Male", city: "Paris", sex_preference: "Female", meet_ups: "Start_ups.Paree", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "390", height: "175", github_id: "vavavoom", about_me: "Hey bobby whats french for has_many :money", smoker: "Non Smoker", role: "premium" )

User.create(email: "Kate.a@gmail.com", password: "password", password_confirmation: "password", name: "Katie Andrews", age: "29", gender: "Female", city: "Madrid", sex_preference: "Male", meet_ups: "Codebar, LRUG, MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", role: "premium" ) 

User.create(email: "jackie@gmail.com", password: "password", password_confirmation: "password", name: "Jackie Chan", age: "33", gender: "Male", city: "New York", sex_preference: "Female", meet_ups: "NY Tech, Start_ups.Paree, Tech Arts", front_backend:"Front-End",favourite_language: "Javascript",stackoverflow_score: "550", height: "180", github_id: "onemorething", about_me: "function()?", smoker: "Non Smoker", role: "premium" )

User.create(email: "andrea@gmail.com", password: "password", password_confirmation: "password", name: "Andrea Smith", age: "29", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Codebar, LRUG, MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", role: "premium" ) 

User.create(email: "mickey@gmail.com", password: "password", password_confirmation: "password", name: "Mickey", age: "39", gender: "Male", city: "London", sex_preference: "Female", meet_ups: "Start_ups.Paree", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "450", height: "186", github_id: "vavavoom", about_me: "I build Daags", smoker: "Non Smoker", role: "premium" )

User.create(email: "francesca@gmail.com", password: "password", password_confirmation: "password", name: "Francesca Rodriguez", age: "33", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Codebar, LRUG, MadridRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "302", height: "174", github_id: "fran.sp", about_me: "I hack anything & everyone", role: "premium" ) 

User.create(email: "amanda@gmail.com", password: "password", password_confirmation: "password", name: "Amanda Piers", age: "29", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, NY Tech Stars", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "40", height: "172", github_id: "amanda.p", about_me: "Can you keep up?", smoker: "Smoker", role: "premium" ) 

User.create(email: "lisa@gmail.com", password: "password", password_confirmation: "password", name: "Lisa Smith", age: "39", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Tech Arts", front_backend:"Front-End",favourite_language: "Javascript",stackoverflow_score: "450", height: "155", github_id: "lisa.20", about_me: "Tech Super Women", smoker: "Non Smoker", role: "premium" )

User.create(email: "laura@gmail.com", password: "password", password_confirmation: "password", name: "Laura Andrews", age: "39", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts,Codebar ", front_backend:"Back-End",favourite_language: "Javascript",stackoverflow_score: "490", height: "168", github_id: "laura.and.tech", about_me: "Unbeatable Tech Guru", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "samantha@gmail.com", password: "password", password_confirmation: "password", name: "Samantha Stuart", age: "27", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, Codebar, ", front_backend:"Front-End",favourite_language: "PHP",stackoverflow_score: "106", height: "164", github_id: "sam.stuart", about_me: "looking for my tech superhero", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "alexia@gmail.com", password: "password", password_confirmation: "password", name: "Alexia", age: "25", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "MRUG", front_backend: "Front-End",favourite_language: "PHP",stackoverflow_score: "25", height: "170", github_id: "alexia.tech", about_me: "Fun loving tech girl", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "katherine@gmail.com", password: "password", password_confirmation: "password", name: "Katherine Cole", age: "31", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Voom Tech,Tech Arts, Codebar, LRUG ", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "210", height: "179", github_id: "kat.c", about_me: "I'm a programming ninja", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "Elizabeth@gmail.com", password: "password", password_confirmation: "password", name: "Elizabeth Bennet", age: "35", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Tech Arts, Codebar, LRUG, MUNICHRUG", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "800", height: "179", github_id: "bennet.e", about_me: "The modern day tech Picasso ", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "amanda@gmail.com", password: "password", password_confirmation: "password", name: "Amanda Piers", age: "29", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "NY Tech Stars", front_backend: "Front-End",favourite_language: "PHP",stackoverflow_score: "40", height: "172", github_id: "amanda.p", about_me: "Can you keep up?", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "stephanie@gmail.com", password: "password", password_confirmation: "password", name: "Stephanie Jacobs", age: "25", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Tech Arts, Codebar, LRUG, MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "premium" ) 

User.create(email: "laura@gmail.com", password: "password", password_confirmation: "password", name: "Laura Andrews", age: "39", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "Codebar ", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "490", height: "168", github_id: "laura.and.tech", about_me: "Unbeatable Tech Guru", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "Kate.a@gmail.com", password: "password", password_confirmation: "password", name: "Katie Andrews", age: "29", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Codebar, LRUG, MUNICHRUG", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "samantha@gmail.com", password: "password", password_confirmation: "password", name: "Samantha Stuart", age: "27", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Tech Arts", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "106", height: "164", github_id: "sam.stuart", about_me: "looking for my tech superhero", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "andrea@gmail.com", password: "password", password_confirmation: "password", name: "Andrea Smith", age: "29", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Codebar, LRUG, MUNICHRUG", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "katherine@gmail.com", password: "password", password_confirmation: "password", name: "Katherine Cole", age: "31", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "LRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "210", height: "179", github_id: "kat.c", about_me: "I'm a programming ninja", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "francesca@gmail.com", password: "password", password_confirmation: "password", name: "Francesca Rodriguez", age: "33", gender: "Female", city: "New York", sex_preference: "Male", meet_ups: "Codebar, LRUG, MadridRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "302", height: "174", github_id: "fran.sp", about_me: "I hack anything & everyone", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "Elizabeth@gmail.com", password: "password", password_confirmation: "password", name: "Elizabeth Bennet", age: "35", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "Tech Arts", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "800", height: "179", github_id: "bennet.e", about_me: "The modern day tech Picasso ", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "stephanie@gmail.com", password: "password", password_confirmation: "password", name: "Stephanie Jacobs", age: "25", gender: "Female", city: "Madrid", sex_preference: "Male", meet_ups: "LRUG", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "Kate.a@gmail.com", password: "password", password_confirmation: "password", name: "Katie Andrews", age: "29", gender: "Female", city: "Madrid", sex_preference: "Male", meet_ups: "Codebar", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "andrea@gmail.com", password: "password", password_confirmation: "password", name: "Andrea Smith", age: "29", gender: "Female", city: "Paris", sex_preference: "Male", meet_ups: "MUNICHRUG", front_backend: "Front-End",favourite_language: "Javascript",stackoverflow_score: "150", height: "170", github_id: "stephanie.js", about_me: "Tech girly girl", smoker: "Non Smoker", role: "basic" ) 

User.create(email: "francesca@gmail.com", password: "password", password_confirmation: "password", name: "Francesca Rodriguez", age: "33", gender: "Female", city: "London", sex_preference: "Male", meet_ups: "MadridRUG", front_backend:"Back-End",favourite_language: "PHP",stackoverflow_score: "302", height: "174", github_id: "fran.sp", about_me: "I hack anything & everyone", smoker: "Non Smoker", role: "basic" ) 
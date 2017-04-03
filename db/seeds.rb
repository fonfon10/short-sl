# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'admin@example.com', password: 'Welcome@123')
User.create(email: 'slafontaine10@gmail.com', password: 'numb10', confirmed_at: Time.now())
User.create(email: 'slafontaine@linear.com', password: 'numb10', confirmed_at: Time.now())

Company.destroy_all
Company.create(name: 'Nike', user_id:2)
Company.create(name: 'Callaway', user_id:2)
Company.create(name: 'Taylor Made', user_id:2)
Company.create(name: 'Adidas', user_id:3)
Company.create(name: 'Titleist', user_id:3)
Company.create(name: 'Puma', user_id:3)


Engineer.destroy_all
Engineer.create(firstname:"Tiger", lastname:"Woods", email:"tw@nike.com", company_id:1, user_id:2)
Engineer.create(firstname:"Phil", lastname:"Mikelson", email:"pm@callaway.com", company_id:2, user_id:2)
Engineer.create(firstname:"Dustin", lastname:"Johnson", email:"dj@tm.com", company_id:3, user_id:2)
Engineer.create(firstname:"Jason", lastname:"Day", email:"jd@adidas.com", company_id:4, user_id:3)
Engineer.create(firstname:"Jordan", lastname:"Speith", email:"js@titleist.com", company_id:5, user_id:3)
Engineer.create(firstname:"Ricky", lastname:"Fowler", email:"rf@puma.com", company_id:6, user_id:3)

Shortener::ShortenedUrl.destroy_all
current_user = User.first
Shortener::ShortenedUrl.generate('http://www.cnn.com',3,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.facebook.com',4,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.twitter.com',4,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.canoe.qc.ca',5,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.cyberpresse.ca',1,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.obj.ca',1,owner: current_user,fresh:true)


current_user = User.last
Shortener::ShortenedUrl.generate('http://www.cnn.com',1,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.facebook.com',2,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.twitter.com',3,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.canoe.qc.ca',4,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.cyberpresse.ca',5,owner: current_user,fresh:true)
Shortener::ShortenedUrl.generate('http://www.obj.ca',6,owner: current_user,fresh:true)

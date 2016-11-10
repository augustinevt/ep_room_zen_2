# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create(title: 'How Clean Are You?')
Question.create(title: 'What\'s Your Noise Level?')
Question.create(title: 'How Tolerant Of Unexpected Parties?')
Question.create(title: 'How Strongly Do You Feel About Paying Rent On Time?')
Question.create(title: 'How Strongly Do You Feel About Sharing Food?')
Question.create(title: 'How Willing Are You To Talk Through Disagreements?')
Question.create(title: 'How Tolerant Are You Of Significant Others Staying Over?')
Question.create(title: 'How Strongly Do You Feel About Recycling?')
Question.create(title: 'How Political Are You?')
Question.create(title: 'Do Tolerant Are You Of Use Recreational Drugs?')



user_1 = User.create(email: "amyvenevici@gmail.com", password: 'foobar', password_confirmation: 'foobar')
user_2 = User.create(email: "hochimin@hochimin.com", password: 'foobar', password_confirmation: 'foobar')
user_3 = User.create(email: "kojiro@sasaki.com", password: 'foobar', password_confirmation: 'foobar')

user_4 = User.create(email: "demo1@demo.com", password: 'foobar', password_confirmation: 'foobar')
user_5 = User.create(email: "demo2@demo.com", password: 'foobar', password_confirmation: 'foobar')
user_6 = User.create(email: "demo3@demo.com", password: 'foobar', password_confirmation: 'foobar')


UserProfile.create(user: user_1, username: "Amy VeneVici", first_name: "Amy", last_name: "VeneVici", avatar: 'http://www.udaipurtimes.com/wp-content/uploads/2012/06/indian-woman.jpg')

UserProfile.create(user: user_2, username: "Ho Chi Mihn", first_name: "Ho", last_name: "Chi Min", avatar: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Ho_Chi_Minh_1946.jpg')

UserProfile.create(user: user_3, username: "Sasaki Kojiro", first_name: "Kojiro", last_name: "Sasaki", avatar: 'http://pre03.deviantart.net/cd7c/th/pre/f/2012/359/8/3/old_man_of_the_mirror_by_fabianomillani-d5p5s3m.jpg')

UserProfile.create(user: user_4, username: "Amy VeneVici", first_name: "Amy", last_name: "VeneVici", avatar: 'http://www.udaipurtimes.com/wp-content/uploads/2012/06/indian-woman.jpg')

UserProfile.create(user: user_5, username: "Ho Chi Mihn", first_name: "Ho", last_name: "Chi Min", avatar: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Ho_Chi_Minh_1946.jpg')

UserProfile.create(user: user_6, username: "Sasaki Kojiro", first_name: "Kojiro", last_name: "Sasaki", avatar: 'http://pre03.deviantart.net/cd7c/th/pre/f/2012/359/8/3/old_man_of_the_mirror_by_fabianomillani-d5p5s3m.jpg')


House.create(title: 'Cute house in Portland', address: '3800 SW Cedar Hills Blvd, Suite 260, Beaverton, OR 97005', avatar: 'http://coolhouse.co.nz/wp-content/uploads/2014/06/coolhouse-collection-mini-740x480.png', user: user_1)


House.create(title: 'Cool alternative house in downtown', address: '812 SW Washington St, Suite 1000',
avatar: 'http://www.fallingwater.org/img/home_assets/FW_FALL_01.jpg', user: user_2)


House.create(title: 'Standard house in Portland', address: '1626 NW 15th Ave, Portland, OR 97209', avatar: 'http://s3.favim.com/orig/140913/cool-house-my-dream-house-Favim.com-2067300.jpg', user: user_3)

House.create(title: 'The greatest house...', address: '2225 NE MARTIN LUTHER KING JR. BLVD. PORTLAND, OREGON 97212', avatar: 'https://s-media-cache-ak0.pinimg.com/originals/7d/2c/3f/7d2c3fca96826911fcc1643f387145d8.jpg', user: user_4)


House.create(title: 'Fort Mugiwara', address: '2140 E Burnside Street,Portland, Oregon 97214',
avatar: 'http://1.bp.blogspot.com/_53PGXW9RID8/TG7GVckPfxI/AAAAAAAACto/mvTDSi7VU3Y/s1600/cool%2Bhouse.jpg', user: user_5)


House.create(title: 'Clean house for clean people', address: '1806 NE Alberta St. Portland, OR', avatar: 'http://www.texashomesonglass.com/wp-content/uploads/2015/03/self-sustaining-home-architecture.jpg', user: user_6)

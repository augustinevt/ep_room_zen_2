# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create(title: 'How Clean Are You?')
Question.create(title: 'What\'s Your Noise Level?')
Question.create(title: 'How Late Are You Up Usually?')
Question.create(title: 'How Do You Feel About Paying Rent On Time?')
Question.create(title: 'How Feel About Sharing Food?')
Question.create(title: 'How Do You Handle Disagreements?')
Question.create(title: 'How Do You Feel About Parties At The House?')
Question.create(title: 'What Do You Think About Having SOs Over?')
Question.create(title: 'How Political Are You?')
Question.create(title: 'Do You Use Recreational Drugs?')



user_1 = User.create(email: "amyvenevici@gmail.com", password: 'foobar', password_confirmation: 'foobar')
user_2 = User.create(email: "hochimin@hochimin.com", password: 'foobar', password_confirmation: 'foobar')
user_3 = User.create(email: "kojiro@sasaki.com", password: 'foobar', password_confirmation: 'foobar')


UserProfile.create(user: user_1, first_name: "Amy", last_name: "VeneVici", avatar: 'http://img01.deviantart.net/9253/i/2015/032/c/7/woman_profile_by_lisabailarina-d8g9uhn.jpg')

UserProfile.create(user: user_2, first_name: "Ho", last_name: "Chi Min", avatar: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Ho_Chi_Minh_1946.jpg')

House.create(title: 'Cute house in Portland', address: '3800 SW Cedar Hills Blvd, Suite 260, Beaverton, OR 97005', avatar: 'http://coolhouse.co.nz/wp-content/uploads/2014/06/coolhouse-collection-mini-740x480.png', user: user_1)


House.create(title: 'Cool alternative house in downtown', address: '812 SW Washington St, Suite 1000',
 avatar: 'http://www.fallingwater.org/img/home_assets/FW_FALL_01.jpg', user: user_2)


House.create(title: 'Standard house in Portland', address: '1626 NW 15th Ave, Portland, OR 97209', avatar: 'http://s3.favim.com/orig/140913/cool-house-my-dream-house-Favim.com-2067300.jpg', user: user_3)

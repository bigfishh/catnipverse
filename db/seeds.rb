# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "deleting seeds..."

Comment.destroy_all
Follow.destroy_all
Like.destroy_all
Location.destroy_all
Post.destroy_all
User.destroy_all

puts "creating users..."


pumpkin = User.create(name: "Pumpkin", username: "pumpkinheree", password: "123", bio: "Fall is my favorite season", img_url:"https://cdn.shopify.com/s/files/1/0344/6469/files/cat-in-pumpkin-500x450_0aab1e8c-36cb-45dc-a4d4-76138fc56f76.jpg?v=1539889749")
bongo = User.create(name: "Bongo Cat", username: "bongoismynameo", password: "bongobongo", bio: "That's my jam~", img_url:"https://cdn.glitch.com/c4e65900-d574-4a30-ab84-cd913b7fa895%2Fbongo-cat.gif?1537302652732")
pusheen = User.create(name: "Pusheen", username: "thepusheencat", password: "pusheenpusheen", bio: "I'm the chubby grey tabby cat you see on the internet", img_url:"https://cdn.thinglink.me/api/image/876172557722583041/1240/10/scaletowidth")
nyan = User.create(name: "Nyan Cat", username: "poptartnrainbows", password: "nyan3nyan3", bio: "I love me some good poptart and rainbows!", img_url:"https://i.ytimg.com/vi/2yJgwwDcgV8/hqdefault.jpg")
snowy = User.create(name: "Snowy the Snowball", username: "itzsnowy", password: "snowysnowy", bio: "it's always better with snow!", img_url:"https://patpgmr.files.wordpress.com/2016/01/snow-cats-animals-brown-1280x1024-wallpaper_www-wallpaperhi-com_60.jpg")
honey = User.create(name: "Honey", username: "kisshoney1212", password: "honeyhoney", bio: "Sweet Like Honey", img_url:"https://sdl-stickershop.line.naver.jp/products/0/0/1/1088652/LINEStorePC/main.png?__=20161019")

puts "created users..."
puts "creating follows..."

one = Follow.create(follower_id: pumpkin.id, following_id: bongo.id)
two = Follow.create(follower_id: pusheen.id, following_id: snowy.id)
three = Follow.create(follower_id: honey.id, following_id: pumpkin.id)
four = Follow.create(follower_id: nyan.id, following_id: bongo.id)
five = Follow.create(follower_id: pusheen.id, following_id: nyan.id)
six = Follow.create(follower_id: nyan.id, following_id: pumpkin.id)
seven = Follow.create(follower_id: snowy.id, following_id: nyan.id)
eight = Follow.create(follower_id: pumpkin.id, following_id: snowy.id)
nine = Follow.create(follower_id: snowy.id, following_id: bongo.id)
ten = Follow.create(follower_id: bongo.id, following_id: honey.id)
eleven= Follow.create(follower_id: honey.id, following_id: bongo.id)
twelve = Follow.create(follower_id: honey.id, following_id: pusheen.id)
thirteen = Follow.create(follower_id: pumpkin.id, following_id: pusheen.id)



puts "created follows..."
puts "creating locations..."

manhat = Location.create(name: "Manhattan", city: "New York City", country: "United ")
tokyo = Location.create(name: "Yanaka", city: "Tokyo", country: "Japan")
paris = Location.create(name: "Boulevard Saint-Germain", city: "Paris", country: "France")
brooklyn = Location.create(name: "Brooklyn", city: "New York City", country: "United ")
seoul = Location.create(name: "Garosu-gil", city: "Seoul", country: "South Korea")

puts "created locations..."
puts "creating posts..."

mp = Post.create(user_id: pumpkin.id, location_id: manhat.id, content: "The sky was cloudless and of a deep dark blue.")
bt = Post.create(user_id: bongo.id, location_id: tokyo.id, content: "I watched the storm, so beautiful yet terrific.")
pp = Post.create(user_id: pusheen.id, location_id: paris.id, content: "Almost before we knew it, we had left the ground.")
nb = Post.create(user_id: nyan.id, location_id: brooklyn.id, content: "A shining crescent far beneath the flying vessel.")
ss = Post.create(user_id: snowy.id, location_id: seoul.id, content: "The face of the moon was in shadow.")
bb = Post.create(user_id: bongo.id, location_id: brooklyn.id, content: "Then came the night of the first falling star.")
hk = Post.create(user_id: honey.id, location_id: manhat.id, content: "Ringing in the new year! 🥳")
st = Post.create(user_id: snowy.id, location_id: tokyo.id, content: "The spectacle before us was indeed sublime")
ps = Post.create(user_id: pumpkin.id, location_id: seoul.id, content: "if you're not happy single, you won't be happy in a relationship. true happiness comes from closing 100 chrome tabs after solving an obscure programming bug, not from someone else -twitter")

puts "creating posts..."
puts "creating likes..."

l1 = Like.create(user_id: honey.id, post_id: bt.id)
l2 = Like.create(user_id: bongo.id, post_id: mp.id)
l3 = Like.create(user_id: pusheen.id, post_id: ps.id)
l4 = Like.create(user_id: nyan.id, post_id: ss.id)
l5 = Like.create(user_id: snowy.id, post_id: bt.id)
l6 = Like.create(user_id: nyan.id, post_id: hk.id)
l7 = Like.create(user_id: snowy.id, post_id: nb.id)
l8 = Like.create(user_id: pusheen.id, post_id: bb.id)
l9 = Like.create(user_id: bongo.id, post_id: st.id)
l10 = Like.create(user_id: pumpkin.id, post_id: pp.id)

puts "created likes..."
puts "creating comments..."

c1 = Comment.create(user_id: pumpkin.id, post_id: bt.id, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
c2 = Comment.create(user_id: nyan.id, post_id: ss.id, content: "Pellentesque euismod justo sed lectus laoreet, quis mattis odio ullamcorper.")
c3 = Comment.create(user_id: pumpkin.id, post_id: pp.id, content: "Ut in est ut lacus lobortis rutrum in et erat.")
c4 = Comment.create(user_id: snowy.id, post_id: bb.id, content: "Nulla venenatis ipsum vitae felis elementum luctus.")
c5 = Comment.create(user_id: nyan.id, post_id: mp.id, content: "Pellentesque euismod justo sed lectus laoreet, quis mattis odio ullamcorper.")
c6 = Comment.create(user_id: bongo.id, post_id: ps.id, content: "Etiam varius dolor in metus lobortis blandit.")
c7 = Comment.create(user_id: nyan.id, post_id: st.id, content: "Donec mattis nisi non tellus aliquam, a laoreet urna lobortis.")
c8 = Comment.create(user_id: pusheen.id, post_id: nb.id, content: "Ut in est ut lacus lobortis rutrum in et erat.")
c9 = Comment.create(user_id: pumpkin.id, post_id: ss.id, content: "Maecenas varius erat in purus egestas sollicitudin.")
c10 = Comment.create(user_id: bongo.id, post_id: nb.id, content: "Etiam varius dolor in metus lobortis blandit.")
c11 = Comment.create(user_id: pusheen.id, post_id: st.id, content: "Aliquam cursus nisi eu tempus scelerisque.")

puts "created comments..."

puts "Done!"
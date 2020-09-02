# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all
Cart.destroy_all
ItemCart.destroy_all
Order.destroy_all


item_1 = Item.create(title: "Steve", description:"cat looking at the window standing up", price: 1.99)
item_2 = Item.create(title: "Bob", description:"cat getting pet", price: 0.99)
item_3 = Item.create(title: "Laura", description:"cat surprised", price: 0.99)
item_4 = Item.create(title: "Ginger", description:"cat resting", price: 1.99)
item_5 = Item.create(title: "Leo", description:"cat looking behind a chair", price: 2.99)
item_6 = Item.create(title: "Coco", description:"cat wearing a mask", price: 3.99)
item_7 = Item.create(title: "Boo", description:"cat with owner", price: 2.99)
item_8 = Item.create(title: "Nala", description:"cat observing", price: 4.99)
item_9 = Item.create(title: "Patrick", description:"kitten showing paw", price: 5.99)
item_10 = Item.create(title: "Mary", description:"cat with sunglasses", price: 9.99)
item_11 = Item.create(title: "Bella", description:"cat with litter", price: 7.99)
item_12 = Item.create(title: "Snow", description:"cat with mask and graphic background", price: 9.99)
item_13 = Item.create(title: "Chacha", description:"cat with a leash", price: 7.99)
item_14 = Item.create(title: "Dino", description:"cat with aleash observing", price: 4.99)
item_15 = Item.create(title: "Tony", description:"cat sitting", price: 2.99)

user_1 = User.create(email: "potato6@gmail.com", password: "jkgjfgkP980", first_name: "Joseph", last_name: "Brock", adress: "9397 Fieldstone St.", zip_code: "31525", is_admin: true)
user_2 = User.create(email: "flower.gl@yahoo.com", password: "gfgfgffg1AZ", first_name: "Mary", last_name: "Lim", adress: "353 SW. Paris Hill Ave.", zip_code: "33801", is_admin: true)
user_3 = User.create(email: "robert.kevin@gmail.com", password: "zadgftf11", first_name: "Robert", last_name: "Marsden", adress: "9837 Franklin Street", zip_code: "20746", is_admin: false)
user_4 = User.create(email: "basket.hover@gmail.com", password: "isodsod88", first_name: "Steve", last_name: "Santiago", adress: "9708 East Lakewood Street", zip_code: "19401", is_admin: false)
user_5 = User.create(email: "violet.sun@gmail.com", password: "kdskd09OP", first_name: "Laura", last_name: "Pace", adress: "409 Border Court", zip_code: "29445", is_admin: false)
user_6 = User.create(email: "paul896@gmail.com", password: "poenkio09P", first_name: "Paul", last_name: "Haas", adress: "759 E. Market Street", zip_code: "53151", is_admin: false)
user_7 = User.create(email: "chloe7899@gmail.com", password: "vcccf1Z", first_name: "Chloe", last_name: "Small", adress: "9266 Amerige St.", zip_code: "11001", is_admin: false)
user_8 = User.create(email: "patrick393223@gmail.com", password: "fQiop21", first_name: "Patrick", last_name: "Ahmad", adress: "8040 Cactus Ave.", zip_code: "30736", is_admin: false)
user_9 = User.create(email: "verclop@yahoo.com", password: "1112FRERdeed", first_name: "Violet", last_name: "Rios", adress: "210 Gartner Ave.", zip_code: "60048", is_admin: false)
user_10 = User.create(email: "toiucnds@yahoo.com", password: "Zjhettre44", first_name: "Tony", last_name: "Marquez", adress: "9610 East West Ave.", zip_code: "02920", is_admin: false)




cart_1 = Cart.create(user: User.all.first)
cart_2 = Cart.create(user: user_2)
cart_3 = Cart.create(user: user_3)
cart_4 = Cart.create(user: user_4) 
cart_5 = Cart.create(user: user_5) 
cart_6 = Cart.create(user: user_6) 
cart_7 = Cart.create(user: user_7) 
cart_8 = Cart.create(user: user_8) 
cart_9 = Cart.create(user: user_9)
cart_10 = Cart.create(user: user_10)






itemCart_1 =  ItemCart.create( cart: cart_1, item: Item.all.sample)
itemCart_2 =  ItemCart.create( cart: cart_2, item: Item.all.sample)


order_1 = Order.create(items: cart_1.items, user: cart_1.user) 
order_2 = Order.create(items: cart_2.items, user: cart_2.user) 
order_3 = Order.create(items: cart_3.items, user: cart_3.user) 
order_4 = Order.create(items: cart_4.items, user: cart_4.user) 
order_5 = Order.create(items: cart_5.items, user: cart_5.user) 
order_6 = Order.create(items: cart_6.items, user: cart_6.user) 
order_7 = Order.create(items: cart_7.items, user: cart_7.user) 
order_8 = Order.create(items: cart_8.items, user: cart_8.user) 
order_9 = Order.create(items: cart_9.items, user: cart_9.user) 
order_10 = Order.create(items: cart_10.items, user: cart_10.user) 


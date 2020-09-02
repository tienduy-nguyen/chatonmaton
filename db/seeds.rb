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


item_1 = Item.create(title: "Steve", description:"cat looking at the window standing up", price: 1.99, image_url: "https://cloudfront-eu-central-1.images.arcpublishing.com/prisa/IPZM424KYBEH7IVUKNQZETWHVU.jpg")
item_2 = Item.create(title: "Bob", description:"cat getting pet", price: 0.99, image_url: "https://cdnuploads.aa.com.tr/uploads/Contents/2020/05/14/thumbs_b_c_88bedbc66bb57f0e884555e8250ae5f9.jpg?v=140708")
item_3 = Item.create(title: "Laura", description:"cat surprised", price: 0.99, image_url: "https://static.toiimg.com/thumb/msid-67586673,width-800,height-600,resizemode-75,imgsize-3918697,pt-32,y_pad-40/67586673.jpg")
item_4 = Item.create(title: "Ginger", description:"cat resting", price: 1.99, image_url: "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_relaxing_on_patio_other/1800x1200_cat_relaxing_on_patio_other.jpg")
item_5 = Item.create(title: "Leo", description:"cat looking behind a chair", price: 2.99, image_url: "https://www.humanesociety.org/sites/default/files/styles/1441x612/public/2018/08/kitten-440379.jpg?h=c8d00152&itok=HVqvfhtg")
item_6 = Item.create(title: "Coco", description:"cat wearing a mask", price: 3.99, image_url: "https://images.theconversation.com/files/350865/original/file-20200803-24-50u91u.jpg?ixlib=rb-1.1.0&rect=37%2C29%2C4955%2C3293&q=45&auto=format&w=926&fit=clip")
item_7 = Item.create(title: "Boo", description:"cat with owner", price: 2.99, image_url: "https://www.usnews.com/dims4/USNEWS/2e684c6/2147483647/thumbnail/970x647/quality/85/?url=http%3A%2F%2Fmedia.beam.usnews.com%2Fa5%2F58%2F9c24a25e42bcb0385b7234d01feb%2F200409-stock.jpg")
item_8 = Item.create(title: "Nala", description:"cat observing", price: 4.99, image_url: "https://www.vets4pets.com/siteassets/species/cat/close-up-of-cat-looking-up.jpg?w=585&scale=down")
item_9 = Item.create(title: "Patrick", description:"kitten showing paw", price: 5.99, image_url: "https://www.humanesociety.org/sites/default/files/styles/1441x612/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=MnaVHwPi")
item_10 = Item.create(title: "Mary", description:"cat with sunglasses", price: 9.99, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-cat-wearing-sunglasses-while-sitting-royalty-free-image-1571755145.jpg?crop=0.670xw:1.00xh;0.147xw,0&resize=768:*")
item_11 = Item.create(title: "Bella", description:"cat with litter", price: 7.99, image_url: "https://images.theconversation.com/files/292611/original/file-20190916-19068-nz1hf2.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop")
item_12 = Item.create(title: "Snow", description:"cat with mask and graphic background", price: 9.99, image_url: "https://pyxis.nymag.com/v1/imgs/671/fdb/29fd522da5c5c7a2a143df34f61a75c482-cat-coronavirus.rsquare.w700.jpg")
item_13 = Item.create(title: "Chacha", description:"cat with a leash", price: 7.99, image_url: "https://bluebuffalo.com/globalassets/00-redesign/articles/cat-articles/how-to-leash-train-your-cat/articleimage-catleash-header.jpg")
item_14 = Item.create(title: "Dino", description:"cat with aleash observing", price: 4.99, image_url: "https://3xnhi43vikn244hoyg160zl4-wpengine.netdna-ssl.com/wp-content/uploads/2019/01/15276403_web1_190123-VNE-CatLeash-1200x801.jpg")
item_15 = Item.create(title: "Tony", description:"cat sitting", price: 2.99, image_url: "https://www.washingtonian.com/wp-content/uploads/2019/02/milada-vigerova-1295750-unsplash-994x1491.jpg")

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


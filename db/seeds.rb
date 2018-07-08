# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "laptop", price: 1000, image_url: "https://www.apple.com/v/macbook-pro/n/images/overview/og.png?201712041404", description: "Something you use to code.")
product.save
product = Product.new(name: "phone", price: 900, image_url: "https://store.storeimages.cdn-apple.com/4980/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/x/iphone-x-silver-select-2017?wid=305&hei=358&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1515602510472", description: "Something you use to interact with people.")
product.save
product = Product.new(name: "headphones", price: 150, image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5577/5577872_rd.jpg;maxHeight=640;maxWidth=550", description: "Something you use to listen without other hearing.")
product.save

Supplier.create(name: "Apple", email: "apple@email.com", phone_number: "123-456")
Supplier.create(name: "Microsoft", email: "microsoft@email.com", phone_number: "789-112")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(name:"Vitalie", email:"vmwhoami@gmail.com", password:"password")
puts "User ceated"
5.times do |post|
  Post.create(body: "
  Lorem ipsum dolor sit amet consectetur adipisicing elit. 
  Eius cum, sunt magni debitis ipsa, quo corporis commodi quod ad
   magnam aperiam minus enim voluptas. Nihil tenetur perspiciatis minima 
   eveniet recusandae.",
   user_id: u.id
   )

end

puts "Posts created"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "remove existing pets and users"
Booking.destroy_all
Pet.destroy_all
User.destroy_all

user = User.create!(user_name: "Lintong", email: "lt.jn@hotmail.com ", password: "topsecret", password_confirmation: "topsecret")
new_user = User.create!(user_name: "Imer", email: "imer@gmail.com ", password: "topsecret", password_confirmation: "topsecret")
Pet.create(pet_name: "Cookie", pet_details: "Lovely french bulldog, very friendly", picture_url: "https://i.guim.co.uk/img/media/38b9433aa08dc7ebeaf74405b24f19f7be0078c7/0_100_3000_1801/master/3000.jpg?width=620&dpr=2&s=none&crop=none",address: "IJsbaanpad 9, 1076 CV Amsterdam", user_id: new_user.id)
Pet.create(pet_name: "Peanut Butter", pet_details: "Loves to go for walks in the forest", picture_url: "https://image.petmd.com/files/styles/978x550/public/2023-01/toy-poodle.jpg",address: "Amsterdam Nieuw-West", user_id: user.id)
Pet.create(pet_name: "Shrek", pet_details: "Cuddly and active little dog, loves to play ball", picture_url: "https://hondenpassie.nl/wp-content/uploads/2021/05/engelse-cocker-spanie%CC%88l-ligt-op-bed.jpeg",address: "Amsterdam Noord", user_id: user.id)
Pet.create(pet_name: "Snowball", pet_details: "Have a beautiful day next to Snowball", picture_url: "https://www.meleklermekani.com/imagehosting/314434dbe7abc63b39.jpg",address: "Amsterdam Zuid", user_id: user.id)
Pet.create(pet_name: "Princess", pet_details: "Princess enjoys fresh air and nature time", picture_url: "https://www.elityavru.com/images/irk-bilgileri/kopek-irki/shih-tzu-1.webp",address: "Amsterdam West", user_id: user.id)
Pet.create(pet_name: "Boris", pet_details: "Big cheerful dog, knows tricks", picture_url: "https://images.ctfassets.net/b85ozb2q358o/5aOPXNiyHE5jb7ZYoN7rHw/2a0312496041361da7470b5ac9113b91/bouvier_bernois_1_363880969.jpeg", address: "Amsterdam Centrum", user_id: new_user.id)

puts('seed a new pet with address')
#Flat.create(address: "16 Villa Gaudelet, Paris", name: "Le Wagon HQ")
Pet.create(pet_name:"Ace", pet_details: "Have fun with Ace!", picture_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.atozvet.com%2Fprevention-treatment-pet-disease%2F&psig=AOvVaw3iPhWgbHr3vX7KCvIELP1W&ust=1732184928734000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJiD2u3Z6okDFQAAAAAdAAAAABAE", address: "16 Villa Gaudelet, Paris", user_id: 1)
puts('done')

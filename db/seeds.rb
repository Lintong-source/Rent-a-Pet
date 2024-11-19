# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create!(user_name: "belumental", email: "belumental@email.com", password: "topsecret", password_confirmation: "topsecret")

Pet.create(pet_name: "Cookie", pet_details: "Lovely french bulldog, very friendly", picture_url: "https://i.guim.co.uk/img/media/38b9433aa08dc7ebeaf74405b24f19f7be0078c7/0_100_3000_1801/master/3000.jpg?width=620&dpr=2&s=none&crop=none", user_id: user.id)


Pet.create(pet_name: "Peanut Butter", pet_details: "Loves to go for walks in the forest", picture_url: "https://image.petmd.com/files/styles/978x550/public/2023-01/toy-poodle.jpg", user_id: user.id)


Pet.create(pet_name: "Shrek", pet_details: "Cuddly and active little dog, loves to play ball", picture_url: "https://hondenpassie.nl/wp-content/uploads/2021/05/engelse-cocker-spanie%CC%88l-ligt-op-bed.jpeg", user_id: user.id)


Pet.create(pet_name: "Wilfred", pet_details: "Take Wilfred for a run, he is very active and friendly", picture_url: "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=532,height=532,fit=cover/animal/breed/dog/adult/66fc1c266f250851700106.jpg", user_id: user.id)


Pet.create(pet_name: "Snowball", pet_details: "Have a beautiful day next to Snowball", picture_url: "https://www.meleklermekani.com/imagehosting/314434dbe7abc63b39.jpg", user_id: user.id)

Pet.create(pet_name: "Princess", pet_details: "Princess enjoys fresh air and nature time", picture_url: "https://www.elityavru.com/images/irk-bilgileri/kopek-irki/shih-tzu-1.webp", user_id: user.id)


Pet.create(pet_name: "Boris", pet_details: "Big cheerful dog, knows tricks", picture_url: "https://images.ctfassets.net/b85ozb2q358o/5aOPXNiyHE5jb7ZYoN7rHw/2a0312496041361da7470b5ac9113b91/bouvier_bernois_1_363880969.jpeg", user_id: user.id)

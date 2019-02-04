require 'faker'
require 'faker'


10.times do
  city = City.create!(name:Faker::GameOfThrones.city,zip_code:Faker::Address.zip_code)
end

10.times do
  user = User.create!(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,description:Faker::FamousLastWords.last_words,email:Faker::Internet.email,age:rand(18..29), city_id: rand(1..10))
end


20.times do 
  gossip = Gossip.create!(title:Faker::DrWho.villian ,content:Faker::DrWho.quote , user_id:rand(1..10))
end


10.times do
  tag = Tag.create!(title:Faker::LeagueOfLegends.summoner_spell)
end

Gossip.all.each do |gossip| 
  TagGossip.create!(gossip_id: gossip.id, tag_id:rand(1..10))
end


10.times do
  pm = PrivateMessage.create!(sender_id:rand(1..10), recipient_id:rand(1..10), content:Faker::LeagueOfLegends.quote)
end
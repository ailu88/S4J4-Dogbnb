require 'faker'



City.destroy_all

Dogsitter.destroy_all

Dog.destroy_all

Stroll.destroy_all


5.times do 

    city = City.create!(name: Faker::Address.city)

   end

puts "5 villes ont été créées"


18.times do

    dog = Dog.create!(name: Faker::Pokemon.name, city: City.all.sample)

    end

puts "18 dogs ont été créés"


28.times do

   dogsitter = Dogsitter.create!(name: Faker::Name.name, city: City.all.sample)

  end


puts "20 dogsitters ont été créés"

38.times do

   stroll = Stroll.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), dog: Dog.all.sample, dogsitter:Dogsitter.all.sample, city: City.all.sample)

  end

puts "38 strolls ont été créées"
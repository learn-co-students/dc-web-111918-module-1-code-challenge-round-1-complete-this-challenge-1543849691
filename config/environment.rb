require 'bundler/setup'
Bundler.require
require_rel '../app'

#customers
jc = Customer.new("JC", "Chang")
jc2 = Customer.new("JC", "Shi")
athena = Customer.new("Athena", "Shi")
chao = Customer.new("Chao", "Yin")
daphne = Customer.new("Daphne", "Lin")
phylicia = Customer.new("Phylicia", "Wu")

#restaurants
epic = Restaurant.new("Epic Steakhouse")
epic2 = Restaurant.new("Epic Steakhouse")
pho75 = Restaurant.new("Pho 75")
urban = Restaurant.new("Urban Hotpot")
mala = Restaurant.new("Malatang")

#review
jc_epic = Review.new(jc, epic, "Yummy ribs", 5)
jc_pho75 = Review.new(jc, pho75, "Best pho in NOVA", 5)
jc_epic = Review.new(jc, epic, "Ribs were burnt this time", 3)
athena_epic = Review.new(athena, epic, "Ribs too big", 3)

binding.pry

puts "hi"

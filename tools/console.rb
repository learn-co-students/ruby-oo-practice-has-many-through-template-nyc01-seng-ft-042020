require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

best_deli = Bodega.new("Best Deli", "Socks")
rosie = Customer.new("Rosie", 29, "Bushwick")
bec = Purchase.new("Baconeggncheese", 3.75, rosie, best_deli)

rosie.new_purchase("loosey", 2.00, best_deli)

punjabi_grocery = Bodega.new("Punjabi Grocery", "Whiskers")

chg = Bodega.new("Chinese Hispanic Grocery", "Fluffy")

quisqueya = Bodega.new("Quisqueya Super Market", "Henry")

craig = Customer.new("Craig", 30, "Queens")

craig.new_purchase("eggs", 4.00, best_deli)
craig.new_purchase("chopped cheese", 5.00,chg)
rosie.new_purchase("coffee", 1.50,chg)
craig.new_purchase("cat food", 10.00,chg)
craig.new_purchase("cat litter", 15.00,chg)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

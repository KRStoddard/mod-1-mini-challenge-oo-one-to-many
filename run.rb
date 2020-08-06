require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

restaurant1 = Restaurant.new("One", "American")
restaurant2 = Restaurant.new("Two", "Italian")

menuitem1 = MenuItem.new(restaurant1, "veggie burger", 8)
menuitem2 = MenuItem.new(restaurant1, "brussel sprouts", 6)
menuitem3 = MenuItem.new(restaurant2, "pasta", 10)
menuitem4 = MenuItem.new(restaurant2, "garlic bread", 3)

binding.pry
"pls"
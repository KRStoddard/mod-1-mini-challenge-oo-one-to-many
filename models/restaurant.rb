
class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  @@menu_items 
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def menu_items
    MenuItem.all.select do |item_instance|
      item_instance.restaurant == self 
    end
  end

  def add_menu_item(dish_name, price)
    new_item = MenuItem.new(self, dish_name, price)
    new_item 
  end

  def print_menu
    self.menu_items.each do |item_instance|
      p "#{item_instance.dish_name} - $#{item_instance.price}"
    end
  end

  def self.biggest_menu
    @largest_restaurant_count = 0
    @largest_restaurant = " "
    
    Restaurant.all.each do |restaurant_instance|
      if restaurant_instance.menu_items.count > @largest_restaurant_count 
        @largest_restaurant = restaurant_instance 
        @largest_restaurant_count = restaurant_instance.menu_items.count
      end
  end
    @largest_restaurant 
  end

  def tasting_menu_cost
    sum = 0
    self.menu_items.each do |item_instance|
      sum += item_instance.price 
    end
    sum 
  end

    

  def self.all
    @@all
  end

end # end of Restaurant class
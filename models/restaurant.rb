
class Restaurant

  #gets
  attr_reader :name, :cuisine
  #create class variables
  @@all = []
  @@menu_items 
  #initialize
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
  #adds Restaurant to array off all restaurants upon initialization
    self.class.all << self
  end
  #method to allow you to find all menuitems for restaurant
  def menu_items
    MenuItem.all.select do |item_instance|
      item_instance.restaurant == self 
    end
  end
  #method to add an item to the restaurant's menu
  def add_menu_item(dish_name, price)
    new_item = MenuItem.new(self, dish_name, price)
    new_item 
  end
  #prints menu for individual restaurant
  def print_menu
    self.menu_items.each do |item_instance|
      p "#{item_instance.dish_name} - $#{item_instance.price}"
    end
  end
  #finds the largest menu of all the instances of restaurant class
  def self.biggest_menu
    self.all.max_by {|restuarant_instance| restuarant_instance.menu_items.count}
  end
  #method for totaling restaurant item costs for individual restaurant instance
  def tasting_menu_cost
    sum = 0
    self.menu_items.each do |item_instance|
      sum += item_instance.price 
    end
    sum 
  end

    
  #allows access to array of all restaurant instances
  def self.all
    @@all
  end

end # end of Restaurant class
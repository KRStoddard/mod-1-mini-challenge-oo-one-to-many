class MenuItem

    #gets
    attr_reader :dish_name, :restaurant 
    #sets and gets
    attr_accessor :price
    #to keep track of all MenuItem instances
    @@all = []
    #initialize
    def initialize(restaurant, dish_name, price)
        @restaurant = restaurant
        @dish_name = dish_name
        @price = price
    #add instance to group upon creation
        self.class.all << self 
    end
    #gives access to array
    def self.all
        @@all
    end
    #creates method to find name 
    def restaurant_name
        @restaurant.name 
    end
end # end of MenuItem class
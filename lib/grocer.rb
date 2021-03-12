require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item_data = nil 
  collection.each do |data|
    if data[:item] == name
      item_data = data
    end 
  end 
  item_data
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = []
  cart.each do |item_data|
    new_item = item_data
    new_item[:count]=1 
    item_in_cart = find_item_by_name_in_collection(item_data[:item], consolidated_cart)
    if item_in_cart.empty?  
  end
  consolidated_cart
end

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false }
]
#puts find_item_by_name_in_collection("SALSA", grocery_shelf)
puts consolidate_cart(grocery_shelf)

  
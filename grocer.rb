def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #pp collection 
 for i in collection
 count = 0
  i.each do |key, value|
    if value == name
    return i
    count+=1
  end
end
end
if count = 0 
  return nil
end
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
#pp cart
  consolidation = []
  for i in cart
 # pp i.class()
    unless consolidation.include?(i)
      consolidation.push(i)
    end
end
#pp consolidation.class()

array = []

for i in consolidation
  array.push(0)
end

for i in cart
  if consolidation.include?(i)
      array[consolidation.index(i)]+=1
  end
end

#pp array

for i in consolidation
#  pp consolidation.index(i) 
  i[:count]=array[consolidation.index(i)]
end


return consolidation
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  counter = 0 
  while counter < coupons.length 
  
  cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
  couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
  cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
  
  counter += 1 
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  pp coupons
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

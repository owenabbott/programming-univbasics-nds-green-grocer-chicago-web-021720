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
  if cart_item && cart_item[:count] >= coupons[counter][:num]
    if cart_item_with_coupon 
      cart_item_with_coupon[:count] += coupons[counter][:num]
      cart_item[:count] -= coupons[counter][:num]
    else
      cart_item_with_coupon = {:item => couponed_item_name,
      :price => coupons[counter][:cost] / coupons[counter][:num],
      :count => coupons[counter][:num], 
      :clearance => cart_item[:clearance]
      }
      cart << cart_item_with_coupon
      cart_item[:count] -= coupons[counter][:num]
      end
    end
  counter += 1 
end
cart
end

def apply_clearance(cart)
  counter = 0 
  while counter < cart.length
  if cart[counter][:clearance] 
    cart[counter][:price] = (cart[counter][:price] - (cart[counter][:price] * 0.2)).round(2)
  end
  counter += 1
end
cart
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  consolidated_cart=consolidate_cart(cart)
  couponed_cart = apply_coupons(consolidated_cart)
  clearanced_cart = apply_clearance(couponed_cart)
#  pp coupons
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

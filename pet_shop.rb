def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)

  pet_shop[:admin][:total_cash] += cash

end

#Is that all they want?
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#Increases the number of pets sold.
def increase_pets_sold(pet_shop, num_sold)
  return pet_shop[:admin][:pets_sold] = num_sold
end

#How many pets in the shop: Ans 6
def stock_count(pet_shop)
  return pet_shop[:pets].length
  # count = 0
  # for stock in pet_shop[:pets]
  #   count += 1
  # end
  # return count
end

#How many of each breed is there?
def pets_by_breed(pet_shop, dog_breed)
  #Creates an empty breed array
  breed_array = []
  #for every pet in this area of the shop 
    for pets in pet_shop[:pets]
#if the pets breed is equal to the user input
      if pets[:breed] == dog_breed
        #the pets breed is added to the array
        breed_array << pets
      end
    end
    #return the breed array
  return breed_array
end
                    #@pet_shop, "Arthur"
def find_pet_by_name(pet_shop, pet_name)


  for pet in pet_shop[:pets]
#the loop tried 6 times and couldn't find "Fred" so it moved outside and finds a return nil statement.
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end


def customer_pet_count(customers)
  customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet

  return customer[:pets].length
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil 
   return nil
  end
  if customer_can_afford_pet(customer, pet)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  add_or_remove_cash(pet_shop, pet[:price])
  end
end


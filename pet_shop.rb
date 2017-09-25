  def pet_shop_name(shop)
    return shop[:name]
  end

  def total_cash(shop)
    return shop[:admin][:total_cash]
  end

  def add_or_remove_cash(shop, cash)
    shop[:admin][:total_cash] += cash
  end

  def pets_sold(shop)
    return shop[:admin][:pets_sold]
  end

  def increase_pets_sold(shop, sold_pets)
    shop[:admin][:pets_sold] += sold_pets
  end

  def stock_count(shop)
    return shop[:pets].length()
  end

  def pets_by_breed(shop, breed)
    pets = []
    for pet in shop[:pets]
      if pet[:breed] == breed
        pets.push(breed)
      end
    end
    return pets
  end

  def find_pet_by_name(shop, name)
    for pet in shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
  end

  # def remove_pet_by_name(shop, name)
  #   pet_to_delete = nil
  #   for pet in shop[:pets]
  #     if pet[:name] == name
  #       pet_to_delete = pet
  #     end
  #   end
  #   shop[:pets]. delete(pet_to_delete)
  # end

def remove_pet_by_name(shop, name)
  shop[:pets].delete(find_pet_by_name(shop, name))
end

  def add_pet_to_stock(shop, new_pet)
    shop[:pets].push(new_pet)
  end

  def customer_pet_count(customer)
    return customer[:pets].length()
  end

  def add_pet_to_customer(customer, new_pet)
    customer[:pets].push(new_pet)
  end

  def customer_can_afford_pet(customer, new_pet)
    customer[:cash] >= new_pet[:price]
  end

  def sell_pet_to_customer(shop, pet, customer)
    if pet != nil #this was very tricky - didn't realise the find per by name function was being ran in the test.
      if customer_can_afford_pet(customer, pet)
        add_pet_to_customer(customer, pet)
        # remove_pet_by_name(shop, pet)
        increase_pets_sold(shop, 1)
        add_or_remove_cash(shop, pet[:price])
      end
    end
  end

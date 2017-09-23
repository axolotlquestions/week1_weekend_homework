  def pet_shop_name(shop)
    return (shop)[:name]
  end

  def total_cash(shop)
    return(shop)[:admin][:total_cash]
  end

  def add_or_remove_cash(shop, cash)
    (shop)[:admin][:total_cash] += cash
  end

  def pets_sold(shop)
    return (shop)[:admin][:pets_sold]
  end

  def increase_pets_sold(shop, sold_pets)
    (shop)[:admin][:pets_sold] += sold_pets
  end

  def stock_count(shop)
    (shop)[:pets].length
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
    pets = []
    for pet in shop [:pets]
      if pet[:name] == name
        pets.push(name)
      end
    end
    return pets
  end

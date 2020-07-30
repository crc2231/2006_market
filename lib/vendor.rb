require './lib/item'

class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
      if @inventory.include?(item)
        stock_count = @inventory.fetch(item)
      else
        0
      end
  end

  def stock(item, quantity)
    if @inventory[item] == nil
        @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end

  def potential_revenue
    revenue = 0
    @inventory.keys.each do |key|
      revenue += @inventory[key] * key.price
    end
    revenue
  end


end

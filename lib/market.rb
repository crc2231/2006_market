require './lib/vendor'

class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end

  # def total_inventory
  #   item_hash = Hash.new { |hash, key| hash[key] = nil }
  #   info_hash = Hash.new { |hash, key| hash[key] = nil }
  #   @vendors.each do |vendor|
  #     vendor.inventory.each do |item|
  #       item_hash[item] = info_hash
  #       info_hash = {vendors: item_array = @vendors.find_all {|vendor| vendor.inventory.include?(item)},
  #       quantity: @vendors.map do |stock|
  #         check_stock(item)
  #       end
  #     }
  #     end
  #   end
  # end




end

class Boutique
  attr_reader :items 
  def initialize(items)
    @items = items
  end

  def item_names
    if @items.count == 1  
      arr = []
      x = @items.first[:name]
      arr << x 
      return arr 
    elsif @items.count == 0
      return []
    else 
      @items.map {|item|
        item[:name] }.sort
    end
  end

  def cheap
    @items.select { |item| item[:price] if item[:price] < 30}
  end

  def out_of_stock
    if @items.count > 0 
      @items.select { |item| item[:quantity_by_size] if item[:quantity_by_size] == {} }
    else 
      return @items
    end
  end

  def stock_for_item(name)
    # @items.select { |item| item[:name] if item[:quantity_by_size] != {}}
    # frog = @items.find_all { |item| item[:name] == name }
    @items.map {|item| item[:quantity_by_size] if item[:name] == name }.compact.first 
    # cow = @items.select { |item| item[:name] == name if item[:quantity_by_size] != {}}
    # cow.map { |item| item[:quantity_by_size]}.first
  end

  def total_stock
    @items.map { |item| item[:quantity_by_size].values}.flatten.sum
  end
end

#  def stock_for_item(name)
#     @items.each {|item| return item[:quantity_by_size] if item[:name] == name}
#   end
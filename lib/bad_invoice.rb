# Invoice class
class BadInvoice
  def initialize
    @items = []
    @total = 0
  end

  def add_item(item)
    @items << item
  end

  def calculate_total
    total = 0
    @items.reduce(0) do |total, item|
      total += item.price * item.quantity
    end
  end
end

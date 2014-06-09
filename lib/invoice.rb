class Invoice
  def initialize
    @items = []
    @total = 0
  end

  def add_item(item)
    @items << item
  end

  def calculate_total
    @items.each do |item|
      @total += item.price * item.quantity
    end
    @total
  end

# 1- Rabais
# 2- Remise
# 3- Escompte
# 4- Frais d'emballage
# 5- Frais de port
# VAT

# http://en.wikipedia.org/wiki/Discounts_and_allowances
# http://en.wikipedia.org/wiki/Rebate_%28marketing%29
# http://en.wikipedia.org/wiki/Goods_and_Services_Tax_%28Canada%29
# http://en.wikipedia.org/wiki/Sales_tax
# http://en.wikipedia.org/wiki/Invoice

end

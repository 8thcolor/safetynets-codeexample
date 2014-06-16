class InternationalInvoice2
  include VATComputer

  def initialize(country, vat_number = nil)
    @items = []
    @country = country
    @vat_number = vat_number
  end

  def add_item(item)
    @items << item
  end

  def calculate_total
    @total = @items.inject(0) { |total, item| total += item.price * item.quantity } 

    @total *= 1 + vat_rate(@country, @vat_number)
  end
end

class InternationalInvoice
  def initialize(country_code, vat_number = nil)
    @items = []
    @total = 0
    @country_code = country_code
    @vat_number = vat_number
  end

  def add_item(item)
    @items << item
  end

  def calculate_total
    @items.each do |item|
      @total += item.price * item.quantity
    end

    if @country_code == 'BE'
       vat = 0.21 * @total
    elsif ['IT','FR','NL','LU','DE'].include?(@country_code)
      if @vat_number
        vat = 0
      else 
        vat = 0.21 * @total
      end
    else
      vat = 0
    end
    @total += vat
  end
end

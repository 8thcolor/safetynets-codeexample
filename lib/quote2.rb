class Quote2
  include VATComputer
  
  def initialize(total, country_code, vat_number = nil)
    @total = 0
    @country_code = country_code
    @vat_number = vat_number
  end
  
  def calculate_total
    @total *= 1 + vat_rate(@country, @vat_number)
  end
end

class Quote
  def initialize(total, country_code, vat_number = nil)
    @total = 0
    @country_code = country_code
    @vat_number = vat_number
  end
  
  def calculate_total
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

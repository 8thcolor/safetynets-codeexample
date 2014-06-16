module VATComputer
	def vat_rate(country, vat_number)
	    if country.belgium?
	       return 0.21
	    elsif country.europe?
	      if vat_number
	        return 0.0
	      else 
	        return 0.21
	      end
	    else
	      return 0.0
	    end
  end
end
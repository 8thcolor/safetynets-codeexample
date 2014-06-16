require 'minitest/autorun'

require '../lib/country'
require '../lib/vat_computer'
require '../lib/international_invoice2'
require '../lib/item'

class TestBasicInternationalInvoice < Minitest::Test

  def setup
  	@item1 = Item.new
  	@item1.price = 20.0
  	@item1.quantity = 3

  	@item2 = Item.new
  	@item2.price = 20.0
  	@item2.quantity = 2
  end

  def test_calculate_belgium
  	invoice = InternationalInvoice2.new(Country.new('BE'),'123')

  	invoice.add_item(@item1)
  	invoice.add_item(@item2)

  	assert_equal 121, invoice.calculate_total
  end

  def test_calculate_france
    invoice = InternationalInvoice2.new(Country.new('FR'),'123')

    invoice.add_item(@item1)
    invoice.add_item(@item2)

    assert_equal 100, invoice.calculate_total
  end

  def test_calculate_france_person
    invoice = InternationalInvoice2.new(Country.new('FR'))

    invoice.add_item(@item1)
    invoice.add_item(@item2)

    assert_equal 121, invoice.calculate_total
  end

    def test_calculate_japan
    invoice = InternationalInvoice2.new(Country.new('JP'))

    invoice.add_item(@item1)
    invoice.add_item(@item2)

    assert_equal 100, invoice.calculate_total
  end
end
require 'minitest/autorun'
require '../lib/invoice'
require '../lib/item'

class TestInvoice < Minitest::Test

  def setup
  	@item1 = Item.new
  	@item1.price = 20.0
  	@item1.quantity = 3

  	@item2 = Item.new
  	@item2.price = 15.0
  	@item2.quantity = 2
  end

  def test_empty_invoice
  	invoice = Invoice.new
  	assert_equal 0, invoice.calculate_total
  end

  def test_calculate_total
  	invoice = Invoice.new

  	invoice.add_item(@item1)
  	invoice.add_item(@item2)

  	assert_equal 90, invoice.calculate_total
  end

  def test_add_item
  	invoice = Invoice.new

  	invoice.add_item(@item1)
  	invoice.add_item(@item2)

  	assert_equal 90, invoice.calculate_total

  	@item2.quantity = 3

  	assert_equal 105, invoice.calculate_total
  end
end
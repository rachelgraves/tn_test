require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/checkout'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(color: true)

class TestCheckout < Minitest::Test
  def setup
    @checkout = Checkout.new
  end

  def test_total_with_combined_discount
    @checkout.scan('001')
    @checkout.scan('001')
    @checkout.scan('002')
    @checkout.scan('003')

    assert_equal 73.76, @checkout.total
  end
end

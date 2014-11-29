require 'minitest/autorun'
require './any'

class TestAny < Minitest::Unit::TestCase
  describe "Any returns true" do
    items = [1, 2, 3, 4, 5]
    it "Some items are even" do
      items.any? { |item| item.even? }.must_equal true
    end
  end
  describe "Any returns false" do
    items = [nil, false, false]
    it "Items are falsey" do
      items.any? { |item| item }.must_equal false
    end
  end
end

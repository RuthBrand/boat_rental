require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/boat'

class BoatTest<Minitest::Test

  def test_it_exists
   kayak = Boat.new(:kayak, 20)
   assert_instance_of Boat, kayak
  end

  def test_it_has_a_type
     kayak = Boat.new(:kayak, 20)
     assert_equal :kayak, kayak.type
  end

  def test_it_has_a_base_price_per_hour
     kayak = Boat.new(:kayak, 20)
     assert_equal 20, kayak.price_per_hour
  end

  def test_it_starts_at_zero_hours_rented
     kayak = Boat.new(:kayak, 20)
     assert_equal 0, kayak.hours_rented
  end

  def test_i_can_add_an_hour_to_hours_rented
     kayak = Boat.new(:kayak, 20)
     kayak.add_hour
     assert_equal 1, kayak.hours_rented
  end

  def test_i_can_add_two_hours_to_hours_rented
     kayak = Boat.new(:kayak, 20)
     kayak.add_hour
     kayak.add_hour
     assert_equal 2, kayak.hours_rented
  end

end

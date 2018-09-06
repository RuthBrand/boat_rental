require 'minitest/autorun'
require 'minitest/pride'
require './lib/dock'
require './lib/renter'
require './lib/boat'
require 'pry'

class DockTest<Minitest::Test

  def test_it_exists
    dock = Dock.new("The Rowing Dock", 3)
    assert_instance_of Dock, dock
  end

  def test_the_dock_has_a_name
    dock = Dock.new("The Rowing Dock", 3)
    assert_equal "The Rowing Dock", dock.name
  end

  def test_the_dock_has_a_max_rental_time
   dock = Dock.new("The Rowing Dock", 3)
   assert_equal 3, dock.max_rental_time
  end

  def test_i_can_track_how_long_the_boats_have_been_rented_out_when_first_rented
    dock = Dock.new("The Rowing Dock", 3)
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)
    canoe = Boat.new(:canoe, 30)
    sup_1 = Boat.new(:standup_paddle_board, 15)
    sup_2 = Boat.new(:standup_paddle_board, 15)
    patrick = Renter.new("Patrick Star", "4242424242424242")
    eugene = Renter.new("Eugene Crabs", "1313131313131313")
    assert_equal 1, dock.rent(kayak_1, patrick)
  end

  # def test_the_kayaks_are_logged_for_two_hours_each_when_i_call_log_hour_the_first_time
  #   dock = Dock.new("The Rowing Dock", 3)
  #   kayak_1 = Boat.new(:kayak, 20)
  #   kayak_2 = Boat.new(:kayak, 20)
  #   # canoe = Boat.new(:canoe, 30)
  #   # sup_1 = Boat.new(:standup_paddle_board, 15)
  #   # sup_2 = Boat.new(:standup_paddle_board, 15)
  #   patrick = Renter.new("Patrick Star", "4242424242424242")
  #   dock.rent(kayak_1, patrick)
  #   dock.rent(kayak_2, patrick)
  #   binding.pry
  #   assert_equal 4, dock.log_hour
  # end

 def test_the_return_method_tells_me_how_many_hours_the_boat_was_rented_for
     dock = Dock.new("The Rowing Dock", 3)
     kayak_1 = Boat.new(:kayak, 20)
     kayak_2 = Boat.new(:kayak, 20)
     # canoe = Boat.new(:canoe, 30)
     # sup_1 = Boat.new(:standup_paddle_board, 15)
     # sup_2 = Boat.new(:standup_paddle_board, 15)
     patrick = Renter.new("Patrick Star", "4242424242424242")
     dock.rent(kayak_1, patrick)
     assert_equal 1, dock.return(kayak_1)
  end

end

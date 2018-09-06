class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
  end

  def rent(boat, renter)
    #ok this method begins tracking how long the boat is rented for
    boat.add_hour
    boat.hours_rented
  end

   def log_hour
  #  #ok so i want this to look at any boats that are not returned and add an hour to them
  #  #also it wants to log the hours of any boats that were returned as well
  #  #how the crap do i get the boats in here without using an argument?????
   end

  def return
    #this method will stop the dock from tracking how long the boat is rented for

  end

  def total
    #this method will take how ever many hours total the boat was rented for up to the
    #max and charge it by the boats price per hour
  end

end

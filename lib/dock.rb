class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
  end

  def rent(boat, renter)
    boat.add_hour
    boat.hours_rented
  end

  def return(boat)
    @retuned = boat.hours_rented
  end

  #  def log_hour
  # #  #ok so i want this to look at any boats that are not returned and add an hour to them
       #like, if boat.return == false, add an hour to the hours_rented
  # #  #how the crap do i get the boats in here without using an argument though?
      # i cant use the return value of rent or return because those both require arguments but i'd need to pass them
      # in from somewhere. 
  #  end
  #
  # def revenue

  #   #this method will take how ever many hours total the boat was rented for up to the
  #   #max amount allowed by the dock and charge it by the boats price per hour FOR EACH BOAT and then add them together
  # end

  # => ok what pieces of knowledge am i missing in order to DO this? I don't even know what I'm trying to ask
  # i know what each method would need to do but there's little details in how to do it that I am missing


end

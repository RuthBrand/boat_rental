class Dock
  attr_reader :name,
              :max_rental_time,
              :rented_boats

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rented_boats = []
  end

  def rent(boat, renter)
    boat.rent
    @rented_boats << boat
    boat.add_hour
    boat.hours_rented
  end

  def return(boat)
    boat.return
    @retuned = boat.hours_rented
  end
  
  def log_hour
    rented_boats.each do |boat|
      boat.add_hour if boat.rented
    end
  end
end

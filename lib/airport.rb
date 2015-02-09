require 'weather'

class Airport; include Weather

  AIRPORT_CAPACITY = 10

  def planes(options = {})
    self.capacity = options.fetch(:capacity, AIRPORT_CAPACITY)
    @planes ||= []
  end

  def land(plane)
    raise "Airport is full" if airport_full?
    raise "Too stormy to land" if stormy?
    planes << plane
  end

  def take_off(plane)
    raise "Too stormy to take off" if stormy?
    planes.delete(plane)
  end

  def planes_count
    planes.count
  end

  def capacity
    @capacity ||= AIRPORT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def airport_full?
    planes_count == capacity
  end

end
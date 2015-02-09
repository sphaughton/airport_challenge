require 'weather'

class Airport; include Weather

  def initialize(options = {})
  end

  def land(plane)
    raise "Too stormy to land" if stormy?
  end

  def take_off(plane)
    raise "Too stormy to take off" if stormy?
  end

end
class Plane

  attr_reader :status

  def initialize(status)
    @plane_status = "landed"
  end

  def status
    @plane_status
  end

  def landed
    raise "Plane is already landed" if already_landed?
    @plane_status = "landed"
  end

  def take_off
    @plane_status = "flying"
  end

  def already_landed?
    @plane_status != "flying"
  end
end
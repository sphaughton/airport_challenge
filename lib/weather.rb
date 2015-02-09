module Weather

  def forecast
    rand(100) < 15
  end

   def stormy?
    @forecast
  end

end
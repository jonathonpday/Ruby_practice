class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production = @speed * 221
    if @speed <= 4
      production
    elsif @speed > 4 && @speed <= 8
      production * 0.9
    elsif @speed == 9
      production * 0.8
    else
      production * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end

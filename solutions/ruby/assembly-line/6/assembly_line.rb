class AssemblyLine

  CARS_MADE_PER_HOUR = 221

  SPEED_TO_RATE = Hash.new do |hash, speed|

    speed_rate = {
      1..4   => 1.00,
      5..8   => 0.90,
      9..9   => 0.80,
      10..10 => 0.77
    }.find {|range, _rate| range.include?(speed) }

    speed_rate ? speed_rate.last : 0.0
  end

  private

  attr_writer :speed, :production

  def initialize(speed)
    self.speed = speed
    self.production = speed * CARS_MADE_PER_HOUR
  end

  public

  attr_reader :speed, :production

  def production_rate_per_hour
    SPEED_TO_RATE[speed] * production
  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)
  end

end

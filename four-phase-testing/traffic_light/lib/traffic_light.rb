class TrafficLight

  attr_reader :states

  def initialize
    @states = [:red,:amber,:green,:amber]
    @state = 0
  end

  def state
    @states[@state]
  end

  def next
    @state == 3 ? @state = 0 : @state += 1
    state
  end

end

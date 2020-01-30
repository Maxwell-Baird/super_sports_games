class Event

  attr_reader :name, :ages
  def initialize(event_name, ages_for_event)
    @name = event_name
    @ages = ages_for_event
  end
end

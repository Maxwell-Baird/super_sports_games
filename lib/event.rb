class Event

  attr_reader :name, :ages
  def initialize(event_name, ages_for_event)
    @name = event_name
    @ages = ages_for_event
  end

  def max_age
    max_age_holder = 0
    @ages.each do |age|

      if age > max_age_holder
        max_age_holder = age
      end

    end
    max_age_holder
  end

  def min_age
    min_age_holder = 999

    @ages.each do |age|

      if age < min_age_holder
        min_age_holder = age
      end

    end

    min_age_holder
  end

end

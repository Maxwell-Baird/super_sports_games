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
    min_age_holder = 99999999

    @ages.each do |age|

      if age < min_age_holder
        min_age_holder = age
      end

    end

    min_age_holder
  end

  def average_age
    average_age_holder = 0.0

    @ages.each do |age|
      average_age_holder += age
    end

    value = average_age_holder / @ages.size
    value.round(2)
  end

  def standard_deviation_age
    step1_value = 0.0
    divide_value = @ages.size
    @ages.each do |value|
      step1_value += value
    end
    step3_value = 0.0
    step3_value = step1_value / divide_value

    step4_array = []
    @ages.each do |value|
      step4_array << (value - step3_value)
    end

    step5_array = []
    step4_array.each do |value|
      step5_array << (value * value)
    end

    step6_sum = 0
    step5_array.each do |value|
      step6_sum += value
    end
    step7_divide = step6_sum / divide_value

    total = Math.sqrt(step7_divide)
    total.round(2)
  end

end

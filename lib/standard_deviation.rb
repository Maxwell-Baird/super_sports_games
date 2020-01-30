ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
def standard_deviation(dev_array)

  step1_value = 0.0
  dev_array.each do |value|
    step1_value += value
  end
  step3_value = 0.0
  step3_value = step1_value / dev_array.size

  step4_array = []
  dev_array.each do |value|
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
  step7_divide = step6_sum / dev_array.size

  total = Math.sqrt(step7_divide)
  puts total
end
# When you find the standard deviation, print it out
standard_deviation(ages)

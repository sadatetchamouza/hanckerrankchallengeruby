# Calculate ratios array ellements that is positive, negative and zero

def element_ratios(arr)
    n = arr.length
    n_positive_element = arr.select { |item| item > 0 }.length.to_f
    n_negative_element = arr.select { |item| item < 0 }.length.to_f
    n_zero_element = arr.select { |item| item == 0 }.length.to_f
    
    puts "%.6f" % (n_positive_element / n)
    puts "%.6f" % (n_negative_element / n)
    puts "%.6f" % (n_zero_element / n)
end


arr = [1, 1, 0, -1, -1]

element_ratios(arr)
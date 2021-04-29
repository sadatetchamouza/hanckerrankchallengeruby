
# calculate the absolute difference 
# between the sums of square matrix diagonals.

require "readline"
require "matrix"

def diagonalDifference(arr)
    n = arr.length
    diagonal_one = 0
    diagonal_two = 0
    arr.each_with_index do |a, i|
        diagonal_one += a[i][i]
        diagonal_two += a[i][n-i-1]
    end

    return (diagonal_one - diagonal_two).abs
end

arr = Array.new(3) { Array.new(3) { 'O' } }

def setArrayValue(arr)
    arr.each do |a|
        #puts "Nested array #{i} Element #{i}"
        a = a.map! { |item| item.to_i + rand(1..6) }
    end
end

#puts arr
setArrayValue(arr)
puts "#{Matrix[*arr]}"
puts "Difference of diagonal #{diagonalDifference arr}"

# Return the min and max of an array of 5 elements 
# which is get by the sum of 4 elements in the array

def mini_max_sum(arr)
    
    sum_arr = []
    new_arr = arr
    arr.each_with_index do |a, i|
        sum = 0
        arr.each_with_index do |ar, j|
            if i != j
                sum += ar
            end
        end
        sum_arr << sum
    end
    puts "#{sum_arr.min} #{sum_arr.max}"
end

arr = [5, 5, 5, 5, 5]

mini_max_sum(arr)
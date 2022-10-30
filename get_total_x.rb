def get_total_x(a, b)
    # Write your code here
    max_number = b.last + 1
    count_a = 0
    count_b = 0
    number_factor = 0
    max_number.times do |number|
        a.each do |ela|
            if ela > 0 && number % ela == 0
                count_a +=1
            end
        end
        b.each do |elb|
            if number > 0 && elb % number == 0
                count_b += 1 
            end
        end
        if count_a == a.length && count_b == b.length
            number_factor += 1
        end
        count_a = 0
        count_b = 0
    end
    
    return number_factor
end

puts get_total_x([1], [100])
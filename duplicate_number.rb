def duplicate_number(nums)
    dup_number = 0
    dup_pos = 0

    nums.each_with_index do |num, index|
        dup_num = num
        if dup_num == nums[index]
            dup_number = num
            dup_pos = index+1
        end
    end
    return [dup_number, dup_pos]
end

puts duplicate_number([1,2,3,2])
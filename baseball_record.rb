def cal_points(ops)
    records = []

    ops.each do |op|
        if op.is_a? Integer 
            records.push(op)
        end
        if op == "C"
            records.pop()
        end
        if op == "D"
            records.push(records.last * 2)
        end
        if op == "+"
            a = records.last
            index = records.find_index(a)
            puts records.find_index(a)
            b = records[index - 1]
            records.push(a + b)
        end
    end

    records.sum
end

puts cal_points([5, 2, "C", "D", "+"])
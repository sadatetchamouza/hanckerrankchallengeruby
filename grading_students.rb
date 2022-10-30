def grade_students(grades)
    notes = []
    grades.each do |grade|
        5.step(100, 5) do |i|
            if grade >= 38
                if grade < i
                    if i%5 == 0
                        diff = i - grade
                        if diff < 3
                            notes.push(i)
                            break
                        else
                            notes.push(grade)
                            break
                        end
                    end
                elsif grade == i
                    notes.push(grade)
                    break
                end
            else
                notes.push(grade)
                break
            end
        end
    end
    notes
end

grades = [73,67,38,33,100,18,62,30,61,53,0,43,2,29,53,61,40]
puts grade_students(grades)
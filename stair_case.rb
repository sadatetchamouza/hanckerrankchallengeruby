# Print straicase of size n

def stair_case(n)
    space = n-1
    n.times do |i|
        space.times do |j|
            print " "
        end
        (i+1).times do |k| 
            print '#'
        end
        space -= 1
        puts
    end
end

stair_case(4)
## Complete the countApplesAndOranges function in the editor below. 
## It should print the number of apples and oranges that land on Sam's house, each on a separate line.

def count_apple_and_orange(s, t, a, b, apples, oranges)
    oranges_positions = oranges.map { |orange| b+orange }
    apples_positions = apples.map { |apple| a+apple }
    count_apple = 0
    count_orange = 0
    oranges_positions.each do |position|
        count_orange += 1 if position >= s && position <= t
    end

    apples_positions.each do |position|
        count_apple += 1 if position >= s && position <= t
    end

    puts count_apple
    puts count_orange
end

count_apple_and_orange(7,11,5,15,[-2,2,1],[5,-6])
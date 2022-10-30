# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
    # Write your code here
    min = scores[0]
    max = scores[0]
    highest_score = []
    lowest_score = []
    scores.each do |score|
        if score < min
            min = score
            lowest_score.push(score)
        end
        if score > max
            max = score
            highest_score.push(score)
        end 
    end
    [highest_score.length, lowest_score.length]
end
# Return the tallest candles and number 
# of occurence of this height given the array of height


# Long version to do it
def birthdayCakeCandles(candles)
    max = 0
    tmp_array = Array.new(candles)
    number_of_tallest = 0
    
    max = tmp_array.shift
    tmp_array.each do |c|
        if max < c
            max = c
        end
    end
    
    candles.each do |candle|
        if candle == max
            number_of_tallest += 1
        end
    end
    number_of_tallest
end

# Short version using Ruby 
# max function on the array
def birthdayCakeCandles_2(candles)
  max = candles.max
  number_of_tallest = 0
  candles.each do |candle|
    number_of_tallest += 1 if candle == max
  end
  number_of_tallest
end

candles = [4,4,1,3]

puts birthdayCakeCandles(candles)
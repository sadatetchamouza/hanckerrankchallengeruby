
def time_converter(s)
  # Write your code here
  time_array = s.split(":")
  time = ""
  twenty_four_format = %w[13 14 15 16 17 18 19 20 21 22 23]
  twelves_format = %w[01 02 03 04 05 06 07 08 09 10 11]
  if time_array.last.include?("AM")
    time_array[2] = time_array.last.tr("AM", "")
    if time_array.first == "12"
      time_array[0] = "00"
    end
    time = time_array.join(":")
  end
  if time_array.last.include?("PM")
    twelves_format.each_with_index do |t_time, index|
      if time_array.first == t_time
        time_array[0] = twenty_four_format[index]
      end
    end
    time_array[2] =  time_array.last.tr("PM", "")
    time = time_array.join(":")
  end
  time
end

print time_converter("07:05:45PM")
print time_converter("12:40:22AM")
print time_converter("06:40:03AM")
print time_converter("12:05:39AM")
print time_converter("12:45:54PM")
print time_converter("02:34:50PM")
print time_converter("04:59:59AM")
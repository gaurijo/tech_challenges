# Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
# s = '07:05:45PM' should return '19:05:45'
# require 'Time' 

# def to_military_time(time_str)
#   time = Time.strptime(time_str,"%I:%M:%S %p")
#   time.strftime("%H:%M:%S")
# end

# puts to_military_time("07:05:45PM")

# Modify the method so it doesn't need to use the Time class

def time_conversion(s)
  s = s.split(//)
  require 'pry'; binding.pry 
  s.pop(2).join
  hour, minute, second = s.join.split(":")

  hour = hour.to_i 
  minute = minute.to_i 
  second = second.to_i 

  if hour !=12 
    hour += 12 
  elsif hour == 12
    hour = 0 
  end

  "%02d:%02d:%02d" % [hour, minute, second]
end
#   x = s.split(//) #turn time string into array of characters
#   if x.include?('M') #if the time is in 12 hr format aka has the M do the following:
#     x = x.map {|c| c.delete(":")} #delete :
#     x = x.map {|c| c.delete("P")} #delete P
#     x = x.map {|c| c.delete("A")} #delete A and/or M
#     x = x.map {|c| c.delete("M")}

#     x = x.map {|i| i.to_i} #map through remaining list and convert everything to an integer
#     b = x[0..1].join.to_i + 12 #take the first two digits and add 12 
#     b = b.to_s 
#     x.slice!(0..1)
#     x.prepend(b.to_i)
#     x.join.split(//)
#   end
#   require 'pry'; binding.pry 
# end

p time_conversion("07:05:45PM")
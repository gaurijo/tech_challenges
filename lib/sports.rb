require 'json'

data = JSON.parse(File.read('./lib/records.json'))
teams = data.keys
records = Hash.new{|hash, key| hash[key] = {}}
# require 'pry'; binding.pry 

teams.each do |t1|
  teams.each do |t2|
    record = data[t1][t2]
    records[t1][t2] = record 
  end
end
#print in tabular form
teams.each do |t|
  print "\t#{t}"
end

puts 
teams.each do |t1|
  print "#{t1}\t"
  teams.each do |t2|
    print "#{records[t1][t2]}\t"
  end
  puts 
end
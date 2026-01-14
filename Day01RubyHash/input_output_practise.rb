# file=File.new("example.txt", "w")
# file.puts "Hello from ruby!"
# file.close

#append mode "a": keeps old content
# File.open("data.txt", "a") do |file|
#   file.puts "append text"
#   file.puts "append text"
# end

# file =File.new("d.txt", "w")
# file.puts "Hello"



# File.open("auto.txt","w") do |file|
#   file.puts "see if its override"
#   file.puts "Line3"
# end

# File.open("auto.txt","a") do |file|
#   file.puts "Append mode only inserts line"
#   file.puts "Not overrides anything"
# end

# simplest method to read content of a file, full file content
content=File.read("auto.txt")
puts content
puts
#read content line by line
File.open("auto.txt","r") do |file|
  file.each_line do |lines|
    puts "line: #{lines}"
  end
end
puts

#this will return array of lines
lines=File.readlines("auto.txt")
puts lines.inspect
puts

#size of the file
puts File.size("auto.txt")
puts File.size("d.txt")

# this will check specified file is exist or not returns boolean values
puts File.exist?("k.txt")

# this will check selected one is file or not, also returns boolean value
puts File.file?("d.txt")

puts File.zero?("d.txt")


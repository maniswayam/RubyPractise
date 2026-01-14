
#i
# puts "Enter value in an array"
# arr=gets.chomp.split.map{|x| x.to_i}
# arr.each_with_index{|v,i| puts "#{i}: #{v}"}


#another way to input array elements one by one
# puts "enter the size of an array"
# size=gets.chomp.to_i
# arr=[]
# size.times do
#   arr<<gets.chomp.to_i
# end
# print arr

puts "enter no. of entries"
n=gets.chomp.to_i
puts "entered no. for entries is : #{n}"
hash={}

n.times do
  key=gets.chomp
  value=gets.chomp
  hash[key]=value
end

puts hash
range1=(1..10).to_a
range2=('bar'..'bat').to_a
puts "#{range1}"
puts "#{range2}"
puts
#some ranges method
digits=1..9
puts "method 1: include?, it will check specified element is present in the range or not then return true or false"



puts "reject: will only take rejected values"
result=digits.reject{|i| i<5}
puts "rejected values are #{result}"
puts
puts digits.to_a


puts "We can perform iterators also on ranges"
digits.each_with_index{|v,i| puts "#{i}: #{v}"}


puts "Enter Score"
score=gets.to_i
result= case score
    when 0..40 then "fail"
    when 41..60 then "pass"
    else "Invalid score"
end
puts result

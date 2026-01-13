student1={
  name:"naman",
  age:23,
  city:"lucknow",
  state:"Uttarpradesh"
}
puts

# Accessing values
puts "Method 1: hash[key],Let see how to access values inside hash"
puts student1[:age]
puts student1[:salary]  #it will give nil in the output bcz hash does not have salary key
puts

puts "Method 2: fetch, gives value if exist otherwise default:- "
puts student1.fetch(:name,0)
puts student1.fetch(:contacts,"contact was not in the student1 hash")
puts

puts "Method 3: values_at, we can get many values from hash at once"
puts student1.values_at(:name,:city)
puts


puts "Method 4: We can print all the Keys Present Inside Hash as well, using Hash.keys:- "
puts student1.keys
puts 
puts " Method 4.1: we can print hash Values using Hash.values:-"
puts student1.values
puts 


#Add/Update data
puts " Method 5: hash[key]=value, if key is present then it will override the value otherwise creates a new value with key:-"
puts student1[:city]="Indore"
puts student1[:state]="madhyaPradesh"
puts student1[:country]="India"
puts

#Looping / Iteration
      puts "Method 6.1: each,  Applying each do loop for traversing hash:- "
      student1.each do |key,value| puts "#{key} => #{value} "
      end
      puts 

      puts "Method 6.2 each_key, it prints all the key present in Hash"
      student1.each_key{|key| puts key}
      puts

      puts "Method 6.3 each_value, it prints all the value associated to the key present in the Hash"
      student1.each_value{|value| puts value}
      puts
      

# Cheking Methods : key /value exist or not....
      puts "Method 7.1: has_key? or key? or include??, it will return true or false if key is there in the Hash Or Not, all three do have the same meaning but different aliases"
      puts student1.has_key?(:contact)
      puts student1.key?(:nationality)
      puts student1.include?(:nationality)
      puts

      puts "Method 7.2: value?/has_value?, checks whether the values exist in the hash or not"
      puts student1.value?("naman")
      puts student1.has_value?("arpit")
      puts


# Delete/remove data : Remove something
      puts "method 8.1: Delete, will delete the value associated to the key hash.delete(:key):- "
      puts student1.delete(:country)
      student1.each do |key,value| puts" #{key} => #{value}"
      end
      puts
      puts "method 8.2: delete_if, delete matching conditions"
      puts student1.delete_if{|k,v| v.is_a?(String)}
      puts 


# empty?: returns true or false, size? and length? gives sizes of the hash
puts "Method 9: size/length, can find out the size or length of the array"
puts student1.size
puts student1.length
puts

puts "Method 10: empty, checks whether the hash is empty or not and return true or false"
puts student1.empty?
puts

=begin
puts "Method 11: clear, it clears out the whole hash"

student1.clear
puts student1.delete(:country)
student1.each do |key,value| puts" #{key} => #{value}"
end
=end

#Filter/ Transform
        puts "Method 12.1: select, works as a filter select only values matching condition"
        result= student1.select{|k,v| v.is_a?(String)}
        puts result
        puts

        puts "Method 12.2: reject, Opposite of select, it rejects the value where key is matched with the condition"
        result1=student1.reject{|k,v| k==:age}
        puts result1
        puts

        puts "Method 12.3 : invert, it can change keys => values and values => keys"
        puts student1.invert
        puts


puts "Method 13: Merge, merges two hashes"
extraHash={
  country:"India",
  nationality:"Indian"
}
final=student1.merge(extraHash)
puts final
puts

puts "Method 14: dig,it will safely print any value inside nested hashe"
nestedhash={
  student:{
    address:{
      city:"Indore"
    }
  }
}
puts nestedhash.dig(:student, :address, :city)
puts

puts "Method 15: ==, it tests whether two hashes are equal or not, Based on their number of key value pairs"
puts extraHash==nestedhash
puts


student2={
  name:"arpit",
  age:23,
  country:"India",
  nationality: "Indian"
}

puts "Method 16: shift, this method will removes first key-value pair"
puts " first Key-value pair that got removed, is:- #{student2.shift}"
puts

#Change Format
      puts "Method 17.1: to_a, it converts the hash into an array"
      resultArray=student2.to_a
      resultArray.each_with_index do |(key,value),index| puts "Index #{index} => #{key}: #{value}"
      end
      puts 

      puts "method 17.2, sort, first converts hash into an array then sort"
      puts " sorted hash :-#{student2.sort}"
      puts

#Default Behaviour
      puts "Method 18.1: default, in ruby if we try to access any key that does'nt exist in a hash, it normally returns nil, but sometimes we want it to return something else like 0, unknown, or even a custom value, thats when we use this.."
      hash={}
      #puts hash[:a]     it will give no value, nil
      hash.default=0
      puts hash[:a]
      puts hash[:b]








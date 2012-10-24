class Array 
 def sum
   result = 0
   self.each do |s|
     result += s
   end
   result
 end

 def square
   map{|n| n*n}  
 end

 def square!
  map!{|n| n*n}
 end
end

class Array 
 def sum
   self.empty? ? 0 : self.inject{|sum, num| sum += num}
 end

 def square
   self.empty? ? self : self.map {|n| n**2}
 end

 def square!
  replace(square)
 end
end

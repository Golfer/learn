class Book
  attr_accessor :title

  def title
     words = []
     @title.split(" ").each do |word|
         words << capitalize_word(word)
     end
     words.first.capitalize!
     words.join(" ")
  end 

  def capitalize_word(word)
     val = word
     val = ["the","a","an","and","in","of"].include?(word) ? word : word.capitalize
  end 
   
end

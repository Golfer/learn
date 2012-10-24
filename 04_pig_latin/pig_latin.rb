def translate(stuff)
      return_value = []
      words = stuff.split(" ")
    
      words.each do |word|
         word[/([^aeiou]*)([a-z]*)/]
         if $1 == "q" && $2[0]=="u"
            qu="qu" 
            base_word = $2.sub("u","")
            new_word = base_word + qu + "ay"
         elsif ["a","e","i","o","u"].include?($1)
            new_word=word+"ay"
         else
            new_word=$2+$1+"ay"
         end
          return_value << new_word
      end
   return_value.join(" ")    
end

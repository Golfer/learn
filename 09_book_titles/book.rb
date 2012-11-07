WORD_SMALL = ['a','an','in','of','the','and']
class String
  def capitalize_unless_small
    WORD_SMALL.include?(self) ? self :self.capitalize    
  end
end

class Book
  attr_accessor :title
  def title=(phraza)
    @title=capitalize(phraza)
  end
  
  def capitalize(phraza)
    phraza.split.inject([]) do |zagolovok, word| 
        if (zagolovok.empty? || word == "i")
          zagolovok << word.capitalize      
        else      
          zagolovok << word.capitalize_unless_small
        end
      end.join(" ")
    end
end
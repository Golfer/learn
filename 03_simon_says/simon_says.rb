def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, times = 2)
  ([s]*times).join(' ')
end

def start_of_word(s, count)
  s[0...count]
end

def first_word(s)
  s.split.first
end

def titleize(str)
  little_words = %w(over the and)
  words = str.split
  words.each_with_index do |word, index|
    word.capitalize! if (!little_words.include?(word) || index == 0)
  end
  words * ' '
end

class Dictionary
  def entries
    @entries ||={}
  end

  def add entry
    entry.is_a?(Hash) ? entries.merge!(entry) : entries[entry] = nil 
  end

  def keywords
    @entries.keys.sort
  end

  def include? word
    entries.keys.include? word
  end

  def find partial_word
    result = {}

    entries.each_pair do |key, value|
      if key =~ /^#{partial_word}/
      result[key] = value
      end
    end
    result
  end

  def printable
    entries.map do |key_value|
      %Q{[#{key_value.first}] "#{key_value.last}"}
    end.sort.join("\n")
  end
end

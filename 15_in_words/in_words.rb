class Fixnum # 1 000 000 000 is too big for Fixnum

  def in_words
    return 'zero' if self == 0

    temp = self
    res = []

    if temp >= 1_000_000_000_000
      res << "#{(temp / 1_000_000_000_000).in_words} trillion"
      temp -= (temp / 1_000_000_000_000) * 1_000_000_000_000
    end

    if temp >= 1_000_000_000
      res << "#{(temp / 1_000_000_000).in_words} billion"
      temp -= (temp / 1_000_000_000) * 1_000_000_000
    end

    if temp >= 1_000_000
      res << "#{(temp / 1_000_000).in_words} million"
      temp -= (temp / 1_000_000) * 1_000_000
    end

    if temp >= 1000
      res << "#{(temp / 1000).in_words} thousand"
      temp -= (temp / 1000) * 1000
    end

    if temp >= 100
      res << "#{(temp / 100).in_words} hundred"
      temp -= (temp / 100) * 100
    end

    if temp >= 20
      case temp / 10
        when 2; res << 'twenty'
        when 3; res << 'thirty'
        when 4; res << 'forty'
        when 5; res << 'fifty'
        when 6; res << 'sixty'
        when 7; res << 'seventy'
        when 8; res << 'eighty'
        when 9; res << 'ninety'
      end
      temp -= (temp / 10) * 10
    end

    if temp > 0
      case temp
        when 1; res << 'one'
        when 2; res << 'two'
        when 3; res << 'three'
        when 4; res << 'four'
        when 5; res << 'five'
        when 6; res << 'six'
        when 7; res << 'seven'
        when 8; res << 'eight'
        when 9; res << 'nine'

        when 10; res << 'ten'
        when 11; res << 'eleven'
        when 12; res << 'twelve'
        when 13; res << 'thirteen'
        when 14; res << 'fourteen'
        when 15; res << 'fifteen'
        when 16; res << 'sixteen'
        when 17; res << 'seventeen'
        when 18; res << 'eighteen'
        when 19; res << 'nineteen'
      end
    end
  res.join(" ")
  end
end
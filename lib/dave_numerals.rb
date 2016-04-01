module DaveNumerals

  DAVES = {
    10 => "don't sing! ",
    9 => "no don't sing! ",
    5 => "dave ",
    4 => "no dave",
    1 => "no "
  }

  def daveify(number)
    dave = DAVES.map do |key, value|
      result = value * (number/key)
      i = number/key
      number -= i * key
      result
    end
    format(dave)
  end

  def format(dave)
    dave
      .join
      .capitalize
      .gsub("dave", "Dave")
      .rstrip
  end
end

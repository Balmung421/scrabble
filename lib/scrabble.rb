class Scrabble


	def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def score(word)
		word_total = 0
		if word.nil? || word.empty?
			return 0
		else
			word.upcase.chars.each do |letter|
				word_total += point_values[letter.upcase] #point_values method above
			end
		end
		return word_total
  end

  def score_with_multipliers(word, multipliers, word_multiplier = 1)
    chars = word.chars
    score = chars.map.each_with_index do |character, index|
      score(character) * multipliers[index]
    end.reduce(:+) #example, (5..10) sum is 45, reduce (:+) returns this sum! aka (5..10).reduce(:+) = 45! Using (:-) will return -35, because it subtracts all the numbers (5-6-7-8-9-10 = -35)
    if word.length == 7
      score += 10
    end
     score * word_multiplier
  end


end

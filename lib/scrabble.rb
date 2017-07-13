require 'pry'

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


end
    #1 this let us brute force a, since it is one, and assures us that our class is working
    # word.point_values
    # loop do |words|
    #   words.point_values.to_a
    #   break if words.nil?
    # end
  #   1
  # else
  #   2
  # binding.pry
  # point_values.to_a #to an array
  # #if word = word in in the above array, return the value!
  # if word.nil?
  #   return nil
  # else
  #   word = point_values.values #this returns the value of each letter!
  #   return point_value
  # #[word]
  #binding.pry
  # point_values.to_a.each do |word|
  #   if word.nil?
  #     return nil
  #   else
  #     word = word.index
  #   end
  #point_values.values #returns the numbers
  #point_values.keys #returns the letter!
  #point_values.keys.each do |key, value|
#     if word.nil?
#       return nil
#     else
#       return point_values.values[word]
#     end
# p test = Scrabble.new
# p test.score("z")
# p point_values.inspect

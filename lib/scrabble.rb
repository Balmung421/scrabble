require 'pry'

class Scrabble

  def score(word)
    #1 this let us brute force a, since it is one, and assures us that our class is working
    # word.point_values
    # loop do |words|
    #   words.point_values.to_a
    #   break if words.nil?
    # end
  #   1
  # else
  #   2
  binding.pry
  point_values.to_a #to an array
  #if word = word in in the above array, return the value!
  if word.nil?
    return nil
  else
    word = point_values.values #this returns the value of each letter!
    return point_value
  #[word]


  end

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
    #point_values.to_a
  end


end

p test = Scrabble.new
p test.score("z")
# p point_values.inspect

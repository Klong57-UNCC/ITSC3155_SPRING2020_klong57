module FunWithStrings
  def palindrome?
    og = self.downcase.scan(/\w/)
    newS = self.reverse.downcase.scan(/\w/)
    og == newS
  end
  
  
  def count_words
    newH = Hash.new(0)
    newS = self.downcase
    y = 0
    newS.scan(/\w+/) do |x|
      newH[x] += 1
    end
    return newH
  end

  def anagram_groups
    newS = self.downcase.split
    solution = newS.group_by {|x| x.chars.sort}.values
    return solution
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

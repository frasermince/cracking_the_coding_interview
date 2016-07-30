def permutation(word_one, word_two)
  return false if word_one.length != word_two.length
  count_letters(word_one) == count_letters(word_two)
end

def count_letters(word)
  word.chars.reduce({}) do |accum, letter|
    if accum[letter]
      accum[letter] += 1
    else
      accum[letter] = 1
    end
    accum
  end
end

def test(word_one, word_two, expected)
  puts "#{word_one} and #{word_two} are permutations of each other #{permutation(word_one, word_two)} expected #{expected}"
end

test 'anagram', 'nagaram', true
test 'bob', 'obb', true
test 'Hello world', 'Hello wirld', false
test 'hi', 'there', false

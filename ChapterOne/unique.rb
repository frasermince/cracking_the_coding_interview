# Problem description said I couldn't use other datastructures. Apparently I'm allowed to use arrays. I would have done this differently if I would have known that.
def unique(word)
  word.chars.each_with_index do |letter, index|
    if index != 0
      word[0..index - 1].chars.each do |compared_letter|
        if compared_letter == letter
          return false
        end
      end
    end
  end
  true
end

def test(word, expected_value)
  puts "***#{word} is unique is #{unique(word)} expected #{expected_value}"
end

test 'MISSISSIPPI', false
test 'CAMERON', true
test 'Interview', false
test 'fraser', false
test 'tim', true

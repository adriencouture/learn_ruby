def shout(word)
  word.upcase
end

def echo(word)
  word
end

def repeat(word, n = 2)
  array = []
  n.times do
    array.push(word)
  end
  array.join(" ")
end

def start_of_word(word, number_of_characters)
  word[0, number_of_characters]
end

def first_word(first_word)
  array = first_word.split
  array[0]
end

def titleize(string)
  array = string.split
  array[0].capitalize!
  array.each do |word| word.capitalize! unless word == "and" || word == "the" || word == "over" end
  array.join(" ")
end

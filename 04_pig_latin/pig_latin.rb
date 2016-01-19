
def translate(string)
  # 1. Identify vowels
  vowel = ["a", "e", "i", "o", "u", "y"]
  # 2. Split the string into individual letters and store them into an array
  string_array = string.split(" ")
  # 3. Iterate on each index - map! Invokes the given block on each element of self
  string_array.map! do |string|
  # 4. Does the first index (A.k.a. the first letter) include a vowel? (Is it present => returns TRUE or FALSE)
    if vowel.include?(string[0])
      string = string + "ay"
    elsif string[0..1] == "qu"
        qu = string.slice!(0..1)
        string + qu + "ay"
    elsif string[1..2] == "qu" && vowel.include?(string[0]) == false
        beginning = string.slice!(0..2)
        string + beginning + "ay"
    elsif vowel.include?(string[0]) == false && vowel.include?(string[1]) == false && vowel.include?(string[2]) == false
        first_three = string.slice!(0..2)
        string + first_three + "ay"
    elsif vowel.include?(string[0]) == false && vowel.include?(string[1]) == false
        first_two = string.slice!(0..1)
        string + first_two + "ay"
    elsif vowel.include?(string[0]) == false
        first = string.slice!(0)
        string + first + "ay"
    else
        "Failure"
    end
  end

    string_array.join(" ")
  # 1. Split the string into individual letters
  # first_letter_array = string.split
  # # 2. The first index needs to be identified as vowel or consonant
  # if first_letter_array[0] == "a"
  # # vowel = ["a", "e", "i", "o", "u", "y"]
  #   string << "ay"
  #
  # end
  # if first_letter[0] = vowel.each do
  #   string.join("ay")
  # else
  #   string.pop[0]
  # end
  # end
end

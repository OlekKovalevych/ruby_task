module Caesar

  def get_cipler(user_string)
    hash = get_hash_with_letter_A_Z
    cipler_string = ""
    user_string.each_char do |letter|
      if !letter.to_s.match?(/[A-Za-z]/)
        cipler_string << letter.to_s
      elsif letter.to_s.match?(/[A-Z]/)
        cipler_string << hash.key(get_index_cipler_letter(hash[letter.to_s.downcase])).upcase
      else
        cipler_string << hash.key(get_index_cipler_letter(hash[letter.to_s]))
      end
    end
    cipler_string
  end

  private

  INDEX_LAST_LATTER_IN_HASH = 25
  MOTION_OF_CIPHER = 5

  def get_index_cipler_letter(index)
    value = index + MOTION_OF_CIPHER
    if value > INDEX_LAST_LATTER_IN_HASH
      return value - INDEX_LAST_LATTER_IN_HASH
    end

    value
  end

  def get_hash_with_letter_A_Z
    hash = Hash.new
    index = 0
    ('a'..'z').each do |letter|
      hash[letter] = index
      index += 1
    end
    hash
  end
end

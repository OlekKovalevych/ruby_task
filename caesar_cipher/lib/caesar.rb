# frozen_string_literal: false

module Caesar

  def cipler_ascii(user_string)
    cipler_string = ''
    user_string.split('').each do |letter|
      index = letter.ord
      case index
      when FIRST_BIG_LETTER..LAST_BIG_LETTER
        #do
        index += MOTION_OF_CIPHER
        unless index <= LAST_BIG_LETTER
          cipler_string << (FIRST_BIG_LETTER + index - LAST_BIG_LETTER).chr
          next
        end
        cipler_string << index.chr
      when FIRST_LITTLE_LETTER..LAST_LITTLE_LETTER
        index += MOTION_OF_CIPHER
        unless index < LAST_LITTLE_LETTER
          cipler_string << (FIRST_LITTLE_LETTER + index - LAST_LITTLE_LETTER).chr
          next
        end
        cipler_string << index.chr
      else
        cipler_string << letter
      end
    end
    cipler_string
  end



  def cipler(user_string)
    hash = get_hash_with_letter_A_Z
    cipler_string = ''
    user_string.split('').each do |letter|
      unless letter.match?(/[A-Za-z]/)
        cipler_string << letter.to_s
        next
      end
      cipler_string << if letter.to_s.match?(/[A-Z]/)
                         hash.key(get_index_cipler_letter(hash[letter.downcase])).upcase
                       else
                         hash.key(get_index_cipler_letter(hash[letter]))
                       end
    end
    cipler_string
  end

  private
  MOTION_OF_CIPHER = 5
  FIRST_LITTLE_LETTER = 65
  LAST_LITTLE_LETTER = 90
  FIRST_BIG_LETTER = 97
  LAST_BIG_LETTER = 122
  INDEX_LAST_LATTER_IN_HASH = 25

  def get_index_cipler_letter(index)
    value = index + MOTION_OF_CIPHER
    return value - INDEX_LAST_LATTER_IN_HASH if value > INDEX_LAST_LATTER_IN_HASH

    value
  end


  def get_hash_with_letter_A_Z
    return @hash if defined? @hash

    @hash = {}
    ('a'..'z').each_with_index do |key, value|
      @hash[key] = value
    end
    @hash
  end
end


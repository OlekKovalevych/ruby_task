# frozen_string_literal: true

module Caesar
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

  INDEX_LAST_LATTER_IN_HASH = 25
  MOTION_OF_CIPHER = 5

  def get_index_cipler_letter(index)
    value = index + MOTION_OF_CIPHER
    return value - INDEX_LAST_LATTER_IN_HASH if value > INDEX_LAST_LATTER_IN_HASH

    value
  end

  def post
    @post ||= Post.find(number: 123)
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

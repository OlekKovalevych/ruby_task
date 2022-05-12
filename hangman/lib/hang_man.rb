
class HangMan
  attr_reader :hash

  def initialize
    @hash = {}
    ('a'..'z').each do |letter|
      @hash[letter] = false
    end
  end
end

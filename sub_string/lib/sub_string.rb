module SubString

  def substring(text, dictionary)
    result = Hash.new(0)

    dictionary.each do |word|
      matches = text.downcase.scan(word).length
      result[word] = matches unless matches == 0
    end
    result
  end

end

class Word
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def conjugate
    raise NotImplementedError, "Conjugation method not implemented."
  end
end

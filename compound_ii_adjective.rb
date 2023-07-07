require_relative 'word'

class CompoundIIAdjective < Word
  def conjugate
    stem = word[0..-3]
    {
      "Stem" => stem,
      "Present" => word,
      "Past" => "#{stem}よかった",
      "Negative" => "#{stem}よくない",
      "Past negative" => "#{stem}よくなかった",
      "Polite present" => "#{word}です",
      "Polite past" => "#{word}よかったです",
      "Polite negative" => "#{stem}よくありません / #{stem}よくないです",
      "Polite past negative" => "#{stem}よくなかったです / #{stem}よくありませんでした",
      "たら form" => "#{stem}よかったら",
      "たら negative" => "#{stem}よくなかったら",
      "ば form" => "#{stem}よければ",
      "ば negative" => "#{stem}よくなければ",
      "Conjunctive" => "#{stem}よくて",
      "Negative conjunctive" => "#{stem}よくなくて",
      "Adverbial" => "#{stem}よく",
      "Degree" => "#{stem}よさ",
      "Degree negative" => "#{stem}よくなさ",
      "Voliotional" => "#{stem}よかろう - Rare"
    }
  end
end

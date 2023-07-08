class IAdjective < Word
  def conjugate
    stem = word[0..-2]
    {
      "Stem" => stem,
      "Present" => word,
      "Past" => "#{stem}かった",
      "Negative" => "#{stem}くない",
      "Past negative" => "#{stem}くなかった",
      "Polite present" => "#{word}です",
      "Polite past" => "#{word}かったです",
      "Polite negative" => "#{stem}くありません / #{stem}くないです",
      "Polite past negative" => "#{stem}くなかったです / #{stem}くありませんでした",
      "たら form" => "#{stem}かったら",
      "たら negative" => "#{stem}くなかったら",
      "ば form" => "#{stem}ければ",
      "ば negative" => "#{stem}くなければ",
      "Conjunctive" => "#{stem}くて",
      "Negative conjunctive" => "#{stem}くなくて",
      "Adverbial" => "#{stem}く",
      "Degree" => "#{stem}さ",
      "Degree negative" => "#{stem}くなさ",
      "Volitional" => "#{stem}かろう - Rare"
    }
  end
end

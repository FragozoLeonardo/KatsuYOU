class Name < Word
  def conjugate
    {
      "Stem" => word,
      "Present" => "#{word}だ",
      "Past" => "#{word}だった",
      "Negative" => "#{word}ではない / じゃない",
      "Past negative" => "#{word}ではなかった / じゃなかった",
      "Polite present" => "#{word}です",
      "Polite past" => "#{word}でした",
      "Polite negative" => "#{word}ではありません / #{word}じゃありません / #{word}ではないです / #{word}じゃないです",
      "Polite past negative" => "#{word}ではありませんでした / #{word}じゃありませんでした / #{word}ではなかったです /　#{word}じゃなかったです",
      "たら form" => "#{word}だったら",
      "たら negative" => "#{word}ではなかったら / #{word}じゃなかったら",
      "ば form" => "#{word}なら（ば）",
      "ば negative" => "#{word}ではなければ / #{word}じゃなかったら",
      "Conjunctive" => "#{word}で",
      "Negative conjunctive" => "#{word}ではなくて / #{word}じゃなくて",
      "Speculative" => "#{word}でしょう / #{word}だろう"
    }
  end
end

class NaAdjectiveName < Word
  def conjugate
    {
      "word" => word,
      "Stem" => word,
      "Present" => "#{word}だ",
      "Past" => "#{word}だった",
      "Negative" => "#{word}ではない / #{word}じゃない",
      "Past negative" => "#{word}ではなかった / #{word}じゃなかった",
      "Polite present" => "#{word}です",
      "Polite past" => "#{word}でした",
      "Polite negative" => "#{word}ではないです / #{word}じゃないです / #{word}ではありません / #{word}じゃありません",
      "Polite past negative" => "#{word}ではなかったです / #{word}じゃなかったです / #{word}ではありませんでした / #{word}じゃありませんでした",
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

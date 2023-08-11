# frozen_string_literal: true

require_relative 'word'

class Name < Word
  def conjugate
    {
      'Word' => word,
      'Stem' => word,
      'Present' => "#{word}だ",
      'Past' => "#{word}だった",
      'Negative' => "#{word}ではない / #{word}じゃない",
      'Past negative' => "#{word}ではなかった / #{word}じゃなかった",
      'Polite present' => "#{word}です",
      'Polite past' => "#{word}でした",
      'Polite negative' => "#{word}ではないです / #{word}じゃないです / #{word}ではありません / #{word}じゃありません",
      'Polite past negative' => "#{word}ではなかったです / #{word}じゃなかったです / #{word}ではありませんでした / #{word}じゃありませんでした",
      'たら form' => "#{word}だったら",
      'たら negative' => "#{word}ではなかったら / #{word}じゃなかったら",
      'ば form' => "#{word}であれば / #{word}なら（ば）",
      'ば negative' => "#{word}ではなければ / #{word}じゃなければ",
      'Conjunctive' => "#{word}で",
      'Negative conjunctive' => "#{word}ではなくて / #{word}じゃなくて",
      'たり form' => "#{word}だったり",
      'Speculative' => "#{word}でしょう / #{word}だろう"
    }
  end
end

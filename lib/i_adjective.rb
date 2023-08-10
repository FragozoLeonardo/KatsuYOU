require_relative 'word'

class IAdjective < Word
  def conjugate
    stem =
      case word
      when "いい"
      "よ"
      when "良い"
      "良"
      when /いい\z/
        word[0..-3] + "よ"
      else
        word[0..-2]
      end

    {
      "Word" => word,
      "Stem" => stem,
      "Present" => word,
      "Past" => "#{stem}かった",
      "Negative" => "#{stem}くない",
      "Past negative" => "#{stem}くなかった",
      "Polite present" => "#{word}です",
      "Polite past" => "#{stem}かったです",
      "Polite negative" => "#{stem}くないです / #{stem}くありません",
      "Polite past negative" => "#{stem}くなかったです / #{stem}くありませんでした",
      "たら form" => "#{stem}かったら",
      "たら negative" => "#{stem}くなかったら",
      "ば form" => "#{stem}ければ",
      "ば negative" => "#{stem}くなければ",
      "Conjunctive" => "#{stem}くて",
      "Negative conjunctive" => "#{stem}くなくて",
      "たり form" => "#{stem}かったり",
      "Adverbial" => "#{stem}く",
      "Nominal" => "#{stem}さ",
      "Volitional" => "#{stem}かろう - Rare"
    }
  end
end

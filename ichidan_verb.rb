require_relative 'word'

class IchidanVerb < Word
  def conjugate
    stem = word[0..-2]

    {
      "Present" => word,
      "Past" => "#{stem}た",
      "Negative" => "#{stem}ない",
      "Past negative" => "#{stem}なかった",
      "Polite present" => "#{stem}ます",
      "Polite past" => "#{stem}ました",
      "Polite negative" => "#{stem}ません",
      "Polite past negative" => "#{stem}ませんでした",
      "たら form" => "#{stem}たら",
      "たら negative" => "#{stem}なかったら",
      "ば form" => "#{stem}れば",
      "ば negative" => "#{stem}なければ",
      "Conjunctive" => "#{stem}て",
      "Negative conjunctive" => "#{stem}なくて",
      "Volitional" => "#{stem}よう",
      "Polite volitional" => "#{stem}ましょう",
      "Negative polite volitional" => "#{stem}まい",
      "Negative desire" => "#{stem}たい",
      "Negative past desire" => "#{stem}たかった",
      "Potential" => "#{stem}られる / #{stem}れる",
      "Negative potential" => "#{stem}られない / #{stem}れない",
      "Passive" => "#{stem}られる",
      "Negative passive" => "#{stem}られない",
      "Causative" => "#{stem}させる 　",
      "Negative causative" => "#{stem}させない",
      "Passive causative" => "#{stem}させられる",
      "Negative passive causative" => "　#{stem}させられない",
      "Imperative" => "#{stem}ろ",
      "Negative imperative" => "#{stem}るな"
    }
  end
end

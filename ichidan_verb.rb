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
      "'Without doing" => "#{stem}ないで",
      "'Formal without doing" => "#{stem}ずに",
      "Volitional" => "#{stem}よう",
      "Polite volitional" => "#{stem}ましょう",
      "Negative 'formal' volitional" => "#{stem}まい",
      "First person desire" => "#{stem}たい",
      "Third person desire" => "#{stem}たがる",
      "Potential" => "#{stem}られる / #{stem}れる",
      "Passive" => "#{stem}られる",
      "Causative" => "#{stem}させる",
      "Passive causative" => "#{stem}させられる",
      "Imperative" => "#{stem}ろ",
      "Negative imperative" => "#{stem}るな",
      "Old negative" => "#{stem}ぬ / #{stem}ん"
    }
  end
end

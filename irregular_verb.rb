require_relative 'word'

class IrregularVerb < Word
  def conjugate
    iku_steam = word[-1] == "く" ? word[0...-1] : word[0]

    conjugations = {
      "Present" => word,
      "Past" => "#{iku_steam}った",
      "Negative" => "#{iku_steam}かない",
      "Past negative" => "#{iku_steam}かなかった",
      "Polite present" => "#{iku_steam}きます",
      "Polite past" => "#{iku_steam}きました",
      "Polite negative" => "#{iku_steam}ません",
      "Polite past negative" => "#{iku_steam}ませんでした",
      "たら form" => "#{iku_steam}ったら",
      "たら negative" => "#{iku_steam}なかったら",
      "ば form" => "#{iku_steam}けば",
      "ば negative" => "#{iku_steam}けなければ",
      "Conjunctive" => "#{iku_steam}って",
      "Negative conjunctive" => "#{iku_steam}かなくて",
      "Without doing" => "#{iku_steam}かないで",
      "'Formal' without doing" => "#{iku_steam}かずに",
      "Volitional" => "#{iku_steam}こう",
      "Polite volitional" => "#{iku_steam}きましょう",
      "Negative 'formal' volitional" => "#{iku_steam}くまい",
      "First person desire" => "#{iku_steam}きたい",
      "Third person desire" => "#{iku_steam}きたがる",
      "Potential" => "#{iku_steam}ける",
      "Passive" => "#{iku_steam}かられる",
      "Causative" => "#{iku_steam}かさせる",
      "Passive causative" => "#{iku_steam}かさせられる",
      "Imperative" => "#{iku_steam}け",
      "Negative imperative" => "#{iku_steam}くな",
      "Old negative" => "#{iku_steam}かぬ / #{iku_steam}かん"
    }

    return conjugations
  end
end

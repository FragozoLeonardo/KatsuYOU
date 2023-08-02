require_relative 'word'

class IrregularVerb < Word
  def conjugate
    iku_stem = word[-1] == "く" ? word[0...-1] : word[0]

    conjugations = {
      "Present" => word,
      "Past" => "#{iku_stem}った",
      "Negative" => "#{iku_stem}かない",
      "Past negative" => "#{iku_stem}かなかった",
      "Polite present" => "#{iku_stem}きます",
      "Polite past" => "#{iku_stem}きました",
      "Polite negative" => "#{iku_stem}ません",
      "Polite past negative" => "#{iku_stem}ませんでした",
      "たら form" => "#{iku_stem}ったら",
      "たら negative" => "#{iku_stem}なかったら",
      "ば form" => "#{iku_stem}けば",
      "ば negative" => "#{iku_stem}けなければ",
      "Conjunctive" => "#{iku_stem}って",
      "Negative conjunctive" => "#{iku_stem}かなくて",
      "Without doing" => "#{iku_stem}かないで",
      "'Formal' without doing" => "#{iku_stem}かずに",
      "Volitional" => "#{iku_stem}こう",
      "Polite volitional" => "#{iku_stem}きましょう",
      "Negative 'formal' volitional" => "#{iku_stem}くまい",
      "First person desire" => "#{iku_stem}きたい",
      "Third person desire" => "#{iku_stem}きたがる",
      "Potential" => "#{iku_stem}ける",
      "Passive" => "#{iku_stem}かられる",
      "Causative" => "#{iku_stem}かさせる",
      "Passive causative" => "#{iku_stem}かさせられる",
      "Imperative" => "#{iku_stem}け",
      "Negative imperative" => "#{iku_stem}くな",
      "Old negative" => "#{iku_stem}かぬ / #{iku_stem}かん"
    }

    return conjugations
  end
end

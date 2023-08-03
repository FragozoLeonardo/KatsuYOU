require_relative 'word'

class IrregularVerb < Word
  def conjugate
    iku_stem = word[-1] == "く" ? word[0...-1] : word[0]

    iku_conjugations = {
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

    irr_kou_tou = word.include?('こう') || word.include?('とう') || word.include?('乞う') || word.include?('問う') || word.include?('訪う')

    if irr_kou_tou
      kou_tou_stem = word[-1] == "う" ? word[0...-1] : word[0]

      kou_tou_conjugations =
        {
          "Present" => word,
          "Past" => "#{kou_tou_stem}うた",
          "Negative" => "#{kou_tou_stem}わない",
          "Past negative" => "#{kou_tou_stem}わなかった",
          "Polite present" => "#{kou_tou_stem}います",
          "Polite past" => "#{kou_tou_stem}いました",
          "Polite negative" => "#{kou_tou_stem}いません",
          "Polite past negative" => "#{kou_tou_stem}いませんでした",
          "たら form" => "#{kou_tou_stem}ったら",
          "たら negative" => "#{kou_tou_stem}わなかったら",
          "ば form" => "#{kou_tou_stem}えば",
          "ば negative" => "#{kou_tou_stem}ってなければ",
          "Conjunctive" => "#{kou_tou_stem}うて",
          "Negative conjunctive" => "#{kou_tou_stem}わなくて",
          "Without doing" => "#{kou_tou_stem}わないで",
          "'Formal' without doing" => "#{kou_tou_stem}わずに",
          "Volitional" => "#{kou_tou_stem}おう",
          "Polite volitional" => "#{kou_tou_stem}いましょう",
          "Negative 'formal' volitional" => "#{kou_tou_stem}うまい",
          "First person desire" => "#{kou_tou_stem}いたい",
          "Third person desire" => "#{kou_tou_stem}いたがる",
          "Potential" => "#{kou_tou_stem}える",
          "Passive" => "#{kou_tou_stem}われる",
          "Causative" => "#{kou_tou_stem}わせる",
          "Passive causative" => "#{kou_tou_stem}わせられる",
          "Imperative" => "#{kou_tou_stem}え",
          "Negative imperative" => "#{kou_tou_stem}うな",
          "Old negative" => "#{kou_tou_stem}わぬ / #{kou_tou_stem}わん"
        }

      return kou_tou_conjugations
    end

    return iku_conjugations
  end
end

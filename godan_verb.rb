require_relative 'word'

class GodanVerb < Word
  def conjugate
    stem = word[0..-2]
    case word[-1]
    when "う"
      {
        "Present" => word,
        "Past" => "#{stem}った",
        "Negative" => "#{stem}わない",
        "Past negative" => "#{stem}わなかった",
        "Polite present" => "#{stem}います",
        "Polite past" => "#{stem}いました",
        "Polite negative" => "#{stem}いません",
        "Polite past negative" => "#{stem}いませんでした",
        "たら form" => "#{stem}ったら",
        "たら negative" => "#{stem}わなかったら",
        "ば form" => "#{stem}えば",
        "ば negative" => "#{stem}えなければ",
        "Conjunctive" => "#{stem}って",
        "Negative conjunctive" => "#{stem}わなくて",
        "Without doing" => "#{stem}わないで",
        "'Formal' without doing" => "#{stem}わずに",
        "Volitional" => "#{stem}おう",
        "Polite volitional" => "#{stem}いましょう",
        "Negative 'formal' volitional" => "#{stem}うまい",
        "First person desire" => "#{stem}いたい",
        "Third person desire" => "#{stem}いたがる",
        "Potential" => "#{stem}える",
        "Passive" => "#{stem}われる",
        "Causative" => "#{stem}わせる",
        "Passive causative" => "#{stem}わせられる",
        "Imperative" => "#{stem}え",
        "Negative imperative" => "#{stem}うな",
        "Old negative" => "#{stem}わぬ / #{stem}わん"
      }
    when "く"
      {
        "Present" => word,
        "Past" => "#{stem}いた",
        "Negative" => "#{stem}かない",
        "Past negative" => "#{stem}かなかった",
        "Polite present" => "#{stem}きます",
        "Polite past" => "#{stem}きました",
        "Polite negative" => "#{stem}きません",
        "Polite past negative" => "#{stem}きませんでした",
        "たら form" => "#{stem}いたら",
        "たら negative" => "#{stem}かなかったら",
        "ば form" => "#{stem}けば",
        "ば negative" => "#{stem}けなければ",
        "Conjunctive" => "#{stem}いて",
        "Negative conjunctive" => "#{stem}かなくて",
        "Without doing" => "#{stem}かないで",
        "'Formal' without doing" => "#{stem}かずに",
        "Volitional" => "#{stem}こう",
        "Polite volitional" => "#{stem}きましょう",
        "Negative 'formal' volitional" => "#{stem}くまい",
        "First person desire" => "#{stem}きたい",
        "Third person desire" => "#{stem}きたがる",
        "Potential" => "#{stem}ける",
        "Passive" => "#{stem}かれる",
        "Causative" => "#{stem}かせる",
        "Passive causative" => "#{stem}かせられる",
        "Imperative" => "#{stem}け",
        "Negative imperative" => "#{stem}くな",
        "Old negative" => "#{stem}かぬ / #{stem}かん"
      }

    when "す"
      {
        "Present" => word,
        "Past" => "#{stem}した",
        "Negative" => "#{stem}さない",
        "Past negative" => "#{stem}さなかった",
        "Polite present" => "#{stem}します",
        "Polite past" => "#{stem}しました",
        "Polite negative" => "#{stem}しません",
        "Polite past negative" => "#{stem}しませんでした",
        "たら form" => "#{stem}したら",
        "たら negative" => "#{stem}さなかったら",
        "ば form" => "#{stem}せば",
        "ば negative" => "#{stem}せなければ",
        "Conjunctive" => "#{stem}して",
        "Negative conjunctive" => "#{stem}さなくて",
        "Without doing" => "#{stem}さないで",
        "'Formal' without doing" => "#{stem}さずに",
        "Volitional" => "#{stem}そう",
        "Polite volitional" => "#{stem}しましょう",
        "Negative 'formal' volitional" => "#{stem}すまい",
        "First person desire" => "#{stem}したい",
        "Third person desire" => "#{stem}したがる",
        "Potential" => "#{stem}せる",
        "Passive" => "#{stem}れる",
        "Causative" => "#{stem}させる",
        "Passive causative" => "#{stem}させられる",
        "Imperative" => "#{stem}せ",
        "Negative imperative" => "#{stem}すな",
        "Old negative" => "#{stem}さぬ / #{stem}さん"
      }

    when "つ"
      {
        "Present" => word,
       "Past" => "#{stem}った",
        "Negative" => "#{stem}たない",
        "Past negative" => "#{stem}たなかった",
        "Polite present" => "#{stem}ちます",
        "Polite past" => "#{stem}ちました",
        "Polite negative" => "#{stem}ちません",
        "Polite past negative" => "#{stem}ちませんでした",
        "たら form" => "#{stem}ちったら",
        "たら negative" => "#{stem}たなかったら",
        "ば form" => "#{stem}てば",
        "ば negative" => "#{stem}てなければ",
        "Conjunctive" => "#{stem}って",
        "Negative conjunctive" => "#{stem}ってなくて",
        "Without doing" => "#{stem}たないで",
        "'Formal' without doing" => "#{stem}たずに",
        "Volitional" => "#{stem}とう",
        "Polite volitional" => "#{stem}ちましょう",
        "Negative 'formal' volitional" => "#{stem}つまい",
        "First person desire" => "#{stem}ちたい",
        "Third person desire" => "#{stem}ちたがる",
        "Potential" => "#{stem}てる",
        "Passive" => "#{stem}たれる",
        "Causative" => "#{stem}たせる",
        "Passive causative" => "#{stem}たせられる",
        "Imperative" => "#{stem}て",
        "Negative imperative" => "#{stem}つな",
        "Old negative" => "#{stem}たぬ / #{stem}たん"
      }

    end
  end
end

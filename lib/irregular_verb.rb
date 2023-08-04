require_relative 'word'

class IrregularVerb < Word
  def initialize(word)
    super(word)
  end

  def conjugate
    if kou_tou?
      return kou_tou_conjugations
    elsif aru?
      return aru_conjugations
    elsif keigo?
      return keigo_aru_conjugations
    elsif kuru?
      return kuru_conjugations
    else
      return iku_conjugations
    end
  end

  private

  def iku_stem
    word[-1] == "く" ? word[0...-1] : word[0]
  end

  def iku_conjugations
    iku_stem = iku_stem()
    {
      "Word" => word,
      "Stem" => "#{iku_stem}き",
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
      "たり Form" => "#{iku_stem}ったり",
      "Old negative" => "#{iku_stem}かぬ / #{iku_stem}かん"
    }
  end

  def kou_tou?
    word.include?('こう') || word.include?('とう') || word.include?('乞う') || word.include?('問う') || word.include?('訪う')
  end

  def kou_tou_stem
    word[-1] == "う" ? word[0...-1] : word[0]
  end

  def kou_tou_conjugations
    kou_tou_stem = kou_tou_stem()
    {
      "Word" => word,
      "Stem" => "#{kou_tou_stem}い",
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
      "ば negative" => "#{kou_tou_stem}なければ",
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
      "たり Form" => "#{kou_tou_stem}うたり",
      "Old negative" => "#{kou_tou_stem}わぬ / #{kou_tou_stem}わん"
    }
  end

  def aru?
    word.include?('ある') || word.include?('有る') || word.include?('在る')
  end

  def aru_stem
    word[-1] == "る" ? word[0...-1] : word[0]
  end

  def aru_conjugations
    aru_stem = aru_stem()
    {
      "Word" => word,
      "Stem" => "#{aru_stem}り",
      "Present" => word,
      "Past" => "#{aru_stem}った",
      "Negative" => "ない",
      "Past negative" => "なかった",
      "Polite present" => "#{aru_stem}ります",
      "Polite past" => "#{aru_stem}りました",
      "Polite negative" => "#{aru_stem}りません",
      "Polite past negative" => "#{aru_stem}りませんでした",
      "たら form" => "#{aru_stem}ったら",
      "たら negative" => "なかったら",
      "ば form" => "#{aru_stem}れば",
      "ば negative" => "なければ",
      "Conjunctive" => "#{aru_stem}って",
      "Negative conjunctive" => "なくて",
      "Without doing" => "#{aru_stem}らないで",
      "'Formal' without doing" => "#{aru_stem}らずに",
      "Volitional" => "#{aru_stem}ろう",
      "Polite volitional" => "#{aru_stem}りましょう",
      "Negative 'formal' volitional" => "#{aru_stem}るまい",
      "First person desire" => "#{aru_stem}りたい",
      "Third person desire" => "#{aru_stem}りたがる",
      "Potential" => "#{aru_stem}りえる",
      "Imperative" => "#{aru_stem}れ",
      "Negative imperative" => "#{aru_stem}るな",
      "たり Form" => "#{aru_stem}ったり",
      "Old negative" => "#{aru_stem}らぬ / #{aru_stem}らん"
    }
  end

  def keigo?
    word.include?('ござる') || word.include?('なさる') || word.include?('いらっしゃる') || word.include?('くださる') || word.include?('御座る') || word.include?('為さる') || word.include?('下さる')
  end

  def honorific_aru_stem
    word[-1] == "る" ? word[0...-1] : word[0]
  end

  def keigo_aru_conjugations
    honorific_aru_stem = honorific_aru_stem()
    {
      "Word" => word,
      "Stem" => "#{honorific_aru_stem}い",
      "Present" => word,
      "Past" => "#{honorific_aru_stem}った",
      "Negative" => "#{honorific_aru_stem}ない",
      "Past negative" => "#{honorific_aru_stem}なかった",
      "Polite present" => "#{honorific_aru_stem}ります",
      "Polite past" => "#{honorific_aru_stem}りました",
      "Polite negative" => "#{honorific_aru_stem}りません",
      "Polite past negative" => "#{honorific_aru_stem}りませんでした",
      "たら form" => "#{honorific_aru_stem}ったら",
      "たら negative" => "なかったら",
      "ば form" => "#{honorific_aru_stem}れば",
      "ば negative" => "なければ",
      "Conjunctive" => "#{honorific_aru_stem}って",
      "Negative conjunctive" => "#{honorific_aru_stem}なくて",
      "Without doing" => "#{honorific_aru_stem}らないで",
      "'Formal' without doing" => "#{honorific_aru_stem}らずに",
      "Volitional" => "#{honorific_aru_stem}ろう",
      "Polite volitional" => "#{honorific_aru_stem}いましょう",
      "Negative 'formal' volitional" => "#{honorific_aru_stem}るまい",
      "First person desire" => "#{honorific_aru_stem}いたい",
      "Third person desire" => "#{honorific_aru_stem}いたがる",
      "Potential" => "#{honorific_aru_stem}える",
      "Imperative" => "#{honorific_aru_stem}い",
      "Negative imperative" => "#{honorific_aru_stem}るな",
      "たり Form" => "#{honorific_aru_stem}ったり",
      "Old negative" => "#{honorific_aru_stem}らぬ / #{honorific_aru_stem}らん"
    }
  end

  def kuru?
    word == "くる" || "来る"
  end

  def kuru_masu_stem
    word == "くる" ? "き" : "来"
  end

  def kuru_neg_stem
    word == "くる" ? "こ" : "来"
  end

  def kuru_conjugations
    kuru_masu_stem = kuru_masu_stem()
    kuru_neg_stem = kuru_neg_stem()
    {
      'Word' => word,
      'Stem' => "#{kuru_masu_stem}",
      'Present' => "#{word}",
      'Past' => "#{kuru_masu_stem}た",
      'Negative' => "#{kuru_neg_stem}ない",
    }
  end
end
4

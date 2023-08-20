# frozen_string_literal: true

require_relative 'word'

class IrregularVerb < Word
  def conjugate
    if kou_tou?
      kou_tou_conjugations
    elsif aru?
      aru_conjugations
    elsif keigo?
      keigo_aru_conjugations
    elsif kuru?
      kuru_conjugations
    elsif suru?
      suru_conjugations
    else
      iku_conjugations
    end
  end

  def iku_stem
    word[-1] == 'く' ? word[0...-1] : word
  end

  def iku_conjugations
    iku_stem = iku_stem()
    {
      'Word' => word,
      'Stem' => "#{iku_stem}き",
      'Present' => word,
      'Past' => "#{iku_stem}った",
      'Negative' => "#{iku_stem}かない",
      'Past negative' => "#{iku_stem}かなかった",
      'Polite present' => "#{iku_stem}きます",
      'Polite past' => "#{iku_stem}きました",
      'Polite negative' => "#{iku_stem}ません",
      'Polite past negative' => "#{iku_stem}ませんでした",
      'たら form' => "#{iku_stem}ったら",
      'たら negative' => "#{iku_stem}なかったら",
      'ば form' => "#{iku_stem}けば",
      'ば negative' => "#{iku_stem}けなければ",
      'Conjunctive' => "#{iku_stem}って",
      'Negative conjunctive' => "#{iku_stem}かなくて",
      'Without doing' => "#{iku_stem}かないで",
      "'Formal' without doing" => "#{iku_stem}かずに",
      'Volitional' => "#{iku_stem}こう",
      'Polite volitional' => "#{iku_stem}きましょう",
      "Negative 'formal' volitional" => "#{iku_stem}くまい",
      'First person desire' => "#{iku_stem}きたい",
      'Third person desire' => "#{iku_stem}きたがる",
      'Potential' => "#{iku_stem}ける",
      'Passive' => "#{iku_stem}かられる",
      'Causative' => "#{iku_stem}かさせる",
      'Passive causative' => "#{iku_stem}かさせられる",
      'Imperative' => "#{iku_stem}け",
      'Negative imperative' => "#{iku_stem}くな",
      'たり Form' => "#{iku_stem}ったり",
      'Old negative' => "#{iku_stem}かぬ / #{iku_stem}かん"
    }
  end

  def kou_tou?
    word.include?('こう') || word.include?('とう') || word.include?('乞う') || word.include?('問う') || word.include?('訪う')
  end

  def kou_tou_stem
    word[-1] == 'う' ? word[0...-1] : word
  end

  def kou_tou_conjugations
    kou_tou_stem = kou_tou_stem()
    {
      'Word' => word,
      'Stem' => "#{kou_tou_stem}い",
      'Present' => word,
      'Past' => "#{kou_tou_stem}うた",
      'Negative' => "#{kou_tou_stem}わない",
      'Past negative' => "#{kou_tou_stem}わなかった",
      'Polite present' => "#{kou_tou_stem}います",
      'Polite past' => "#{kou_tou_stem}いました",
      'Polite negative' => "#{kou_tou_stem}いません",
      'Polite past negative' => "#{kou_tou_stem}いませんでした",
      'たら form' => "#{kou_tou_stem}ったら",
      'たら negative' => "#{kou_tou_stem}わなかったら",
      'ば form' => "#{kou_tou_stem}えば",
      'ば negative' => "#{kou_tou_stem}わなければ",
      'Conjunctive' => "#{kou_tou_stem}うて",
      'Negative conjunctive' => "#{kou_tou_stem}わなくて",
      'Without doing' => "#{kou_tou_stem}わないで",
      "'Formal' without doing" => "#{kou_tou_stem}わずに",
      'Volitional' => "#{kou_tou_stem}おう",
      'Polite volitional' => "#{kou_tou_stem}いましょう",
      "Negative 'formal' volitional" => "#{kou_tou_stem}うまい",
      'First person desire' => "#{kou_tou_stem}いたい",
      'Third person desire' => "#{kou_tou_stem}いたがる",
      'Potential' => "#{kou_tou_stem}える",
      'Passive' => "#{kou_tou_stem}われる",
      'Causative' => "#{kou_tou_stem}わせる",
      'Passive causative' => "#{kou_tou_stem}わせられる",
      'Imperative' => "#{kou_tou_stem}え",
      'Negative imperative' => "#{kou_tou_stem}うな",
      'たり Form' => "#{kou_tou_stem}うたり",
      'Old negative' => "#{kou_tou_stem}わぬ / #{kou_tou_stem}わん"
    }
  end

  def aru?
    word.include?('ある') || word.include?('有る') || word.include?('在る')
  end

  def aru_stem
    word[-1] == 'る' ? word[0...-1] : word
  end

  def aru_conjugations
    aru_stem = aru_stem()
    {
      'Word' => word,
      'Stem' => "#{aru_stem}り",
      'Present' => word,
      'Past' => "#{aru_stem}った",
      'Negative' => 'ない',
      'Past negative' => 'なかった',
      'Polite present' => "#{aru_stem}ります",
      'Polite past' => "#{aru_stem}りました",
      'Polite negative' => "#{aru_stem}りません",
      'Polite past negative' => "#{aru_stem}りませんでした",
      'たら form' => "#{aru_stem}ったら",
      'たら negative' => 'なかったら',
      'ば form' => "#{aru_stem}れば",
      'ば negative' => 'なければ',
      'Conjunctive' => "#{aru_stem}って",
      'Negative conjunctive' => 'なくて',
      'Without doing' => "#{aru_stem}らないで",
      "'Formal' without doing" => "#{aru_stem}らずに",
      'Volitional' => "#{aru_stem}ろう",
      'Polite volitional' => "#{aru_stem}りましょう",
      "Negative 'formal' volitional" => "#{aru_stem}るまい",
      'First person desire' => "#{aru_stem}りたい",
      'Third person desire' => "#{aru_stem}りたがる",
      'Potential' => "#{aru_stem}りえる",
      'Imperative' => "#{aru_stem}れ",
      'Negative imperative' => "#{aru_stem}るな",
      'たり Form' => "#{aru_stem}ったり",
      'Old negative' => "#{aru_stem}らぬ / #{aru_stem}らん"
    }
  end

  def keigo?
    word.include?('ござる') || word.include?('なさる') || word.include?('いらっしゃる') || word.include?('くださる') || word.include?('おっしゃる') || word.include?('御座る') || word.include?('為さる') || word.include?('下さる') || word.include?('仰る')
  end

  def honorific_aru_stem
    word[-1] == 'る' ? word[0...-1] : word
  end

  def keigo_aru_conjugations
    honorific_aru_stem = honorific_aru_stem()
    {
      'Word' => word,
      'Stem' => "#{honorific_aru_stem}い",
      'Present' => word,
      'Past' => "#{honorific_aru_stem}った",
      'Negative' => "#{honorific_aru_stem}ない",
      'Past negative' => "#{honorific_aru_stem}なかった",
      'Polite present' => "#{honorific_aru_stem}います",
      'Polite past' => "#{honorific_aru_stem}いました",
      'Polite negative' => "#{honorific_aru_stem}いません",
      'Polite past negative' => "#{honorific_aru_stem}いませんでした",
      'たら form' => "#{honorific_aru_stem}ったら",
      'たら negative' => "#{honorific_aru_stem}なかったら",
      'ば form' => "#{honorific_aru_stem}れば",
      'ば negative' => "#{honorific_aru_stem}なければ",
      'Conjunctive' => "#{honorific_aru_stem}って",
      'Negative conjunctive' => "#{honorific_aru_stem}なくて",
      'Without doing' => "#{honorific_aru_stem}らないで",
      "'Formal' without doing" => "#{honorific_aru_stem}らずに",
      'Volitional' => "#{honorific_aru_stem}ろう",
      'Polite volitional' => "#{honorific_aru_stem}いましょう",
      "Negative 'formal' volitional" => "#{honorific_aru_stem}るまい",
      'First person desire' => "#{honorific_aru_stem}いたい",
      'Third person desire' => "#{honorific_aru_stem}いたがる",
      'Potential' => "#{honorific_aru_stem}える",
      'Passive' => "#{honorific_aru_stem}られる",
      'Causative' => "#{honorific_aru_stem}らせる",
      'Passive causative' => "#{honorific_aru_stem}らせられる",
      'Imperative' => "#{honorific_aru_stem}い",
      'Negative imperative' => "#{honorific_aru_stem}るな",
      'たり Form' => "#{honorific_aru_stem}ったり",
      'Old negative' => "#{honorific_aru_stem}らぬ / #{honorific_aru_stem}らん"
    }
  end

  def kuru?
    word.end_with?('くる', '来る')
  end

  def kuru_masu_stem
    if word.end_with?('くる')
      "#{word[0..-3]}き"
    elsif word.end_with?('来る')
      "#{word[0..-3]}来"
    else
      raise 'Invalid verb type for kuru_masu_stem()'
    end
  end

  def kuru_neg_stem
    if word.end_with?('くる')
      "#{word[0..-3]}こ"
    elsif word.end_with?('来る')
      "#{word[0..-3]}来"
    else
      raise 'Invalid verb type for kuru_neg_stem()'
    end
  end

  def kuru_if_stem
    if word.end_with?('くる')
      "#{word[0..-3]}け"
    elsif word.end_with?('来る')
      "#{word[0..-3]}来"
    else
      raise 'Invalid verb type for kuru_if_stem()'
    end
  end

  def kuru_jisho_stem
    if word.end_with?('くる')
      "#{word[0..-3]}く"
    elsif word.end_with?('来る')
      "#{word[0..-3]}来"
    else
      raise 'Invalid verb type for kuru_jisho_stem()'
    end
  end

  def kuru_conjugations
    kuru_masu_stem = kuru_masu_stem()
    kuru_neg_stem = kuru_neg_stem()
    kuru_if_stem = kuru_if_stem()
    kuru_jisho_stem = kuru_jisho_stem()
    {
      'Word' => word,
      'Stem' => kuru_masu_stem.to_s,
      'Present' => word.to_s,
      'Past' => "#{kuru_masu_stem}た",
      'Negative' => "#{kuru_neg_stem}ない",
      'Past negative' => "#{kuru_neg_stem}なかった",
      'Polite present' => "#{kuru_masu_stem}ます",
      'Polite past' => "#{kuru_masu_stem}ました",
      'Polite negative' => "#{kuru_masu_stem}ません",
      'Polite past negative' => "#{kuru_masu_stem}ませんでした",
      'たら form' => "#{kuru_masu_stem}たら",
      'たら negative' => "#{kuru_neg_stem}なかったら",
      'ば form' => "#{kuru_if_stem}れば",
      'ば negative' => "#{kuru_if_stem}なければ",
      'Conjunctive' => "#{kuru_masu_stem}て",
      'Negative conjunctive' => "#{kuru_neg_stem}なくて",
      'Without doing' => "#{kuru_neg_stem}ないで",
      "'Formal' without doing" => "#{kuru_neg_stem}ずに",
      'Volitional' => "#{kuru_neg_stem}よう",
      'Polite volitional' => "#{kuru_masu_stem}ましょう",
      "Negative 'formal' volitional" => "#{kuru_jisho_stem}まい",
      'First person desire' => "#{kuru_masu_stem}たい",
      'Third person desire' => "#{kuru_masu_stem}たがる",
      'Potential' => "#{kuru_neg_stem}られる",
      'Passive' => "#{kuru_neg_stem}られる",
      'Causative' => "#{kuru_neg_stem}させる",
      'Passive causative' => "#{kuru_neg_stem}させられる",
      'Imperative' => "#{kuru_neg_stem}い",
      'Negative imperative' => "#{kuru_jisho_stem}るな",
      'たり Form' => "#{kuru_masu_stem}たり",
      'Old negative' => "#{kuru_neg_stem}らぬ / #{kuru_neg_stem}らん"
    }
  end

  def suru?
    word.end_with?('する', '為る')
  end

  def suru_i_stem
    if word.end_with?('する')
      "#{word[0..-3]}し"
    elsif word.end_with?('為る')
      "#{word[0..-3]}為"
    else
      raise 'Invalid verb type for suru_i_stem()'
    end
  end

  def suru_a_stem
    if word.end_with?('する')
      "#{word[0..-3]}さ"
    elsif word.end_with?('為る')
      "#{word[0..-3]}為"
    else
      raise 'Invalid verb type for suru_a_stem()'
    end
  end

  def suru_u_stem
    if word.end_with?('する')
      "#{word[0..-3]}す"
    elsif word.end_with?('為る')
      "#{word[0..-3]}為"
    else
      raise 'Invalid verb type for suru_u_stem()'
    end
  end

  def suru_e_stem
    if word.end_with?('する')
      "#{word[0..-3]}せ"
    elsif word.end_with?('為る')
      "#{word[0..-3]}為"
    else
      raise 'Invalid verb type for suru_e_stem()'
    end
  end

  def suru_dekiru
    if word.end_with?('する')
      "#{word[0..-3]}できる"
    elsif word.end_with?('為る')
      "#{word[0..-3]}出来る"
    else
      raise 'Invalid verb type for suru_dekiru()'
    end
  end

  def suru_conjugations
    suru_i_stem = suru_i_stem()
    suru_a_stem = suru_a_stem()
    suru_u_stem = suru_u_stem()
    suru_e_stem = suru_e_stem()
    suru_dekiru = suru_dekiru()
    {
      'Word' => word,
      'Stem' => suru_i_stem.to_s,
      'Present' => word.to_s,
      'Past' => "#{suru_i_stem}た",
      'Negative' => "#{suru_i_stem}ない",
      'Past negative' => "#{suru_i_stem}なかった",
      'Polite present' => "#{suru_i_stem}ます",
      'Polite past' => "#{suru_i_stem}ました",
      'Polite negative' => "#{suru_i_stem}ません",
      'Polite past negative' => "#{suru_i_stem}ませんでした",
      'たら form' => "#{suru_i_stem}たら",
      'たら negative' => "#{suru_i_stem}なかったら",
      'ば form' => "#{suru_u_stem}れば",
      'ば negative' => "#{suru_i_stem}なければ",
      'Conjunctive' => "#{suru_i_stem}て",
      'Negative conjunctive' => "#{suru_i_stem}なくて",
      'Without doing' => "#{suru_i_stem}ないで",
      "'Formal' without doing" => "#{suru_e_stem}ずに",
      'Volitional' => "#{suru_i_stem}よう",
      'Polite volitional' => "#{suru_i_stem}ましょう",
      "Negative 'formal' volitional" => "#{word}まい",
      'First person desire' => "#{suru_i_stem}たい",
      'Third person desire' => "#{suru_i_stem}たがる",
      'Potential' => suru_dekiru.to_s,
      'Passivee' => "#{suru_a_stem}れる",
      'Causative' => "#{suru_a_stem}せる",
      'Passive causative' => "#{suru_a_stem}せられる",
      'Imperative' => "#{suru_i_stem}ろ / #{suru_e_stem}よ",
      'Negative imperative' => "#{word}な",
      'たり Form' => "#{suru_i_stem}たり",
      'Old negative' => "#{suru_e_stem}ぬ / #{suru_e_stem}ん"
    }
  end
end

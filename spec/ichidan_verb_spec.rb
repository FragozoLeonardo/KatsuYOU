require './lib/ichidan_verb'

RSpec.describe IchidanVerb do
  context 'with a kanji verb' do
    let(:kanji_verb) { "食べる" }

    it 'generates the expected conjugations for kanji ichidan verb' do
      ichidan_verb = IchidanVerb.new(kanji_verb)
      conjugations = ichidan_verb.conjugate

      stem = kanji_verb[0..-2]

      expect(conjugations["Word"]).to eq(kanji_verb)
      expect(conjugations["Stem"]).to eq(stem)
      expect(conjugations["Present"]).to eq(kanji_verb)
      expect(conjugations["Past"]).to eq("#{stem}た")
      expect(conjugations["Negative"]).to eq("#{stem}ない")
      expect(conjugations["Past negative"]).to eq("#{stem}なかった")
      expect(conjugations["Polite present"]).to eq("#{stem}ます")
      expect(conjugations["Polite past"]).to eq("#{stem}ました")
      expect(conjugations["Polite negative"]).to eq("#{stem}ません")
      expect(conjugations["Polite past negative"]).to eq("#{stem}ませんでした")
      expect(conjugations["たら form"]).to eq("#{stem}たら")
      expect(conjugations["たら negative"]).to eq("#{stem}なかったら")
      expect(conjugations["ば form"]).to eq("#{stem}れば")
      expect(conjugations["ば negative"]).to eq("#{stem}なければ")
      expect(conjugations["Conjunctive"]).to eq("#{stem}て")
      expect(conjugations["Negative conjunctive"]).to eq("#{stem}なくて")
      expect(conjugations["Without doing"]).to eq("#{stem}ないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{stem}ずに")
      expect(conjugations["Volitional"]).to eq("#{stem}よう")
      expect(conjugations["Polite volitional"]).to eq("#{stem}ましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{stem}まい")
      expect(conjugations["First person desire"]).to eq("#{stem}たい")
      expect(conjugations["Third person desire"]).to eq("#{stem}たがる")
      expect(conjugations["Potential"]).to eq("#{stem}られる / #{stem}れる")
      expect(conjugations["Passive"]).to eq("#{stem}られる")
      expect(conjugations["Causative"]).to eq("#{stem}させる")
      expect(conjugations["Passive causative"]).to eq("#{stem}させられる")
      expect(conjugations["Imperative"]).to eq("#{stem}ろ")
      expect(conjugations["Negative imperative"]).to eq("#{stem}るな")
      expect(conjugations["たり Form"]).to eq("#{stem}たり")
      expect(conjugations["Old negative"]).to eq("#{stem}ぬ / #{stem}ん")
    end
  end

  context 'with a kana verb' do
    let(:kana_verb) { "たべる" }

    it 'generates the expected conjugations for kana ichidan verb' do
      ichidan_verb = IchidanVerb.new(kana_verb)
      conjugations = ichidan_verb.conjugate

      stem = kana_verb[0..-2]

      expect(conjugations["Word"]).to eq(kana_verb)
      expect(conjugations["Stem"]).to eq(stem)
      expect(conjugations["Present"]).to eq(kana_verb)
      expect(conjugations["Past"]).to eq("#{stem}た")
      expect(conjugations["Negative"]).to eq("#{stem}ない")
      expect(conjugations["Past negative"]).to eq("#{stem}なかった")
      expect(conjugations["Polite present"]).to eq("#{stem}ます")
      expect(conjugations["Polite past"]).to eq("#{stem}ました")
      expect(conjugations["Polite negative"]).to eq("#{stem}ません")
      expect(conjugations["Polite past negative"]).to eq("#{stem}ませんでした")
      expect(conjugations["たら form"]).to eq("#{stem}たら")
      expect(conjugations["たら negative"]).to eq("#{stem}なかったら")
      expect(conjugations["ば form"]).to eq("#{stem}れば")
      expect(conjugations["ば negative"]).to eq("#{stem}なければ")
      expect(conjugations["Conjunctive"]).to eq("#{stem}て")
      expect(conjugations["Negative conjunctive"]).to eq("#{stem}なくて")
      expect(conjugations["Without doing"]).to eq("#{stem}ないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{stem}ずに")
      expect(conjugations["Volitional"]).to eq("#{stem}よう")
      expect(conjugations["Polite volitional"]).to eq("#{stem}ましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{stem}まい")
      expect(conjugations["First person desire"]).to eq("#{stem}たい")
      expect(conjugations["Third person desire"]).to eq("#{stem}たがる")
      expect(conjugations["Potential"]).to eq("#{stem}られる / #{stem}れる")
      expect(conjugations["Passive"]).to eq("#{stem}られる")
      expect(conjugations["Causative"]).to eq("#{stem}させる")
      expect(conjugations["Passive causative"]).to eq("#{stem}させられる")
      expect(conjugations["Imperative"]).to eq("#{stem}ろ")
      expect(conjugations["Negative imperative"]).to eq("#{stem}るな")
      expect(conjugations["たり Form"]).to eq("#{stem}たり")
      expect(conjugations["Old negative"]).to eq("#{stem}ぬ / #{stem}ん")
    end
  end
end

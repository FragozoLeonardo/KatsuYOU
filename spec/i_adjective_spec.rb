require './lib/i_adjective'

RSpec.describe IAdjective do
  context 'with a regular い adjective' do
    let(:kanji_adjective) { "優しい" }
    let(:kana_adjective) { "やさしい" }
    let(:kanji_stem) { "優し" }
    let(:kana_stem) { "やさし" }

    context 'for kanji い adjective' do
      it 'generates the expected conjugations' do
        i_adjective = IAdjective.new(kanji_adjective)
        conjugations = i_adjective.conjugate

        expect(conjugations["Word"]).to eq(kanji_adjective)
        expect(conjugations["Stem"]).to eq(kanji_stem)
        expect(conjugations["Present"]).to eq(kanji_adjective)
        expect(conjugations["Past"]).to eq("#{kanji_stem}かった")
        expect(conjugations["Negative"]).to eq("#{kanji_stem}くない")
        expect(conjugations["Past negative"]).to eq("#{kanji_stem}くなかった")
        expect(conjugations["Polite present"]).to eq("#{kanji_adjective}です")
        expect(conjugations["Polite past"]).to eq("#{kanji_stem}かったです")
        expect(conjugations["Polite negative"]).to eq("#{kanji_stem}くないです / #{kanji_stem}くありません")
        expect(conjugations["Polite past negative"]).to eq("#{kanji_stem}くなかったです / #{kanji_stem}くありませんでした")
        expect(conjugations["たら form"]).to eq("#{kanji_stem}かったら")
        expect(conjugations["たら negative"]).to eq("#{kanji_stem}くなかったら")
        expect(conjugations["ば form"]).to eq("#{kanji_stem}ければ")
        expect(conjugations["ば negative"]).to eq("#{kanji_stem}くなければ")
        expect(conjugations["Conjunctive"]).to eq("#{kanji_stem}くて")
        expect(conjugations["Negative conjunctive"]).to eq("#{kanji_stem}くなくて")
        expect(conjugations["たり form"]).to eq("#{kanji_stem}かったり")
        expect(conjugations["Adverbial"]).to eq("#{kanji_stem}く")
        expect(conjugations["Nominal"]).to eq("#{kanji_stem}さ")
        expect(conjugations["Volitional"]).to eq("#{kanji_stem}かろう - Rare")
      end
    end

    context 'for kana い adjective' do
      it 'generates the expected conjugations' do
        i_adjective = IAdjective.new(kana_adjective)
        conjugations = i_adjective.conjugate

        expect(conjugations["Word"]).to eq(kana_adjective)
        expect(conjugations["Stem"]).to eq(kana_stem)
        expect(conjugations["Present"]).to eq(kana_adjective)
        expect(conjugations["Past"]).to eq("#{kana_stem}かった")
        expect(conjugations["Negative"]).to eq("#{kana_stem}くない")
        expect(conjugations["Past negative"]).to eq("#{kana_stem}くなかった")
        expect(conjugations["Polite present"]).to eq("#{kana_adjective}です")
        expect(conjugations["Polite past"]).to eq("#{kana_stem}かったです")
        expect(conjugations["Polite negative"]).to eq("#{kana_stem}くないです / #{kana_stem}くありません")
        expect(conjugations["Polite past negative"]).to eq("#{kana_stem}くなかったです / #{kana_stem}くありませんでした")
        expect(conjugations["たら form"]).to eq("#{kana_stem}かったら")
        expect(conjugations["たら negative"]).to eq("#{kana_stem}くなかったら")
        expect(conjugations["ば form"]).to eq("#{kana_stem}ければ")
        expect(conjugations["ば negative"]).to eq("#{kana_stem}くなければ")
        expect(conjugations["Conjunctive"]).to eq("#{kana_stem}くて")
        expect(conjugations["Negative conjunctive"]).to eq("#{kana_stem}くなくて")
        expect(conjugations["たり form"]).to eq("#{kana_stem}かったり")
        expect(conjugations["Adverbial"]).to eq("#{kana_stem}く")
        expect(conjugations["Nominal"]).to eq("#{kana_stem}さ")
        expect(conjugations["Volitional"]).to eq("#{kana_stem}かろう - Rare")
      end
    end
  end

  context 'with a いい adjective' do
    let(:kanji_adjective_ii) { "良い" }
    let(:kana_adjective_ii) { "いい" }
    let(:kanji_stem_ii) { "良" }
    let(:kana_stem_ii) { "よ" }

    context 'for kanji いい adjective' do
      it 'generates the expected conjugations' do
        i_adjective_ii = IAdjective.new(kanji_adjective_ii)
        conjugations_ii = i_adjective_ii.conjugate

        expect(conjugations_ii["Word"]).to eq(kanji_adjective_ii)
        expect(conjugations_ii["Stem"]).to eq(kanji_stem_ii)
        expect(conjugations_ii["Present"]).to eq(kanji_adjective_ii)
        expect(conjugations_ii["Past"]).to eq("#{kanji_stem_ii}かった")
        expect(conjugations_ii["Negative"]).to eq("#{kanji_stem_ii}くない")
        expect(conjugations_ii["Past negative"]).to eq("#{kanji_stem_ii}くなかった")
        expect(conjugations_ii["Polite present"]).to eq("#{kanji_adjective_ii}です")
        expect(conjugations_ii["Polite past"]).to eq("#{kanji_stem_ii}かったです")
        expect(conjugations_ii["Polite negative"]).to eq("#{kanji_stem_ii}くないです / #{kanji_stem_ii}くありません")
        expect(conjugations_ii["Polite past negative"]).to eq("#{kanji_stem_ii}くなかったです / #{kanji_stem_ii}くありませんでした")
        expect(conjugations_ii["たら form"]).to eq("#{kanji_stem_ii}かったら")
        expect(conjugations_ii["たら negative"]).to eq("#{kanji_stem_ii}くなかったら")
        expect(conjugations_ii["ば form"]).to eq("#{kanji_stem_ii}ければ")
        expect(conjugations_ii["ば negative"]).to eq("#{kanji_stem_ii}くなければ")
        expect(conjugations_ii["Conjunctive"]).to eq("#{kanji_stem_ii}くて")
        expect(conjugations_ii["Negative conjunctive"]).to eq("#{kanji_stem_ii}くなくて")
        expect(conjugations_ii["たり form"]).to eq("#{kanji_stem_ii}かったり")
        expect(conjugations_ii["Adverbial"]).to eq("#{kanji_stem_ii}く")
        expect(conjugations_ii["Nominal"]).to eq("#{kanji_stem_ii}さ")
        expect(conjugations_ii["Volitional"]).to eq("#{kanji_stem_ii}かろう - Rare")
      end
    end

    context 'for kana いい adjective' do
      it 'generates the expected conjugations' do
        i_adjective_ii = IAdjective.new(kana_adjective_ii)
        conjugations_ii = i_adjective_ii.conjugate

        expect(conjugations_ii["Word"]).to eq(kana_adjective_ii)
        expect(conjugations_ii["Stem"]).to eq(kana_stem_ii)
        expect(conjugations_ii["Present"]).to eq(kana_adjective_ii)
        expect(conjugations_ii["Past"]).to eq("#{kana_stem_ii}かった")
        expect(conjugations_ii["Negative"]).to eq("#{kana_stem_ii}くない")
        expect(conjugations_ii["Past negative"]).to eq("#{kana_stem_ii}くなかった")
        expect(conjugations_ii["Polite present"]).to eq("#{kana_adjective_ii}です")
        expect(conjugations_ii["Polite past"]).to eq("#{kana_stem_ii}かったです")
        expect(conjugations_ii["Polite negative"]).to eq("#{kana_stem_ii}くないです / #{kana_stem_ii}くありません")
        expect(conjugations_ii["Polite past negative"]).to eq("#{kana_stem_ii}くなかったです / #{kana_stem_ii}くありませんでした")
        expect(conjugations_ii["たら form"]).to eq("#{kana_stem_ii}かったら")
        expect(conjugations_ii["たら negative"]).to eq("#{kana_stem_ii}くなかったら")
        expect(conjugations_ii["ば form"]).to eq("#{kana_stem_ii}ければ")
        expect(conjugations_ii["ば negative"]).to eq("#{kana_stem_ii}くなければ")
        expect(conjugations_ii["Conjunctive"]).to eq("#{kana_stem_ii}くて")
        expect(conjugations_ii["Negative conjunctive"]).to eq("#{kana_stem_ii}くなくて")
        expect(conjugations_ii["たり form"]).to eq("#{kana_stem_ii}かったり")
        expect(conjugations_ii["Adverbial"]).to eq("#{kana_stem_ii}く")
        expect(conjugations_ii["Nominal"]).to eq("#{kana_stem_ii}さ")
        expect(conjugations_ii["Volitional"]).to eq("#{kana_stem_ii}かろう - Rare")
      end
    end
  end
end

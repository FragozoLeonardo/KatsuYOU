require './lib/na_adjective'

RSpec.describe NaAdjective do
  context 'with kanji word' do
    let(:kanji_word) { "元気" }

    it 'generates the expected conjugations for kanji version' do
      naadjective = NaAdjective.new(kanji_word)
      conjugations = naadjective.conjugate

      expect(conjugations["Word"]).to eq(kanji_word)
      expect(conjugations["Stem"]).to eq(kanji_word)
      expect(conjugations["Present"]).to eq("#{kanji_word}だ")
      expect(conjugations["Past"]).to eq("#{kanji_word}だった")
      expect(conjugations["Negative"]).to eq("#{kanji_word}ではない / #{kanji_word}じゃない")
      expect(conjugations["Past negative"]).to eq("#{kanji_word}ではなかった / #{kanji_word}じゃなかった")
      expect(conjugations["Polite present"]).to eq("#{kanji_word}です")
      expect(conjugations["Polite past"]).to eq("#{kanji_word}でした")
      expect(conjugations["Polite negative"]).to eq("#{kanji_word}ではないです / #{kanji_word}じゃないです / #{kanji_word}ではありません / #{kanji_word}じゃありません")
      expect(conjugations["Polite past negative"]).to eq("#{kanji_word}ではなかったです / #{kanji_word}じゃなかったです / #{kanji_word}ではありませんでした / #{kanji_word}じゃありませんでした")
      expect(conjugations["たら form"]).to eq("#{kanji_word}だったら")
      expect(conjugations["たら negative"]).to eq("#{kanji_word}ではなかったら / #{kanji_word}じゃなかったら")
      expect(conjugations["ば form"]).to eq("#{kanji_word}であれば / #{kanji_word}なら（ば）")
      expect(conjugations["ば negative"]).to eq("#{kanji_word}ではなければ / #{kanji_word}じゃなければ")
      expect(conjugations["Conjunctive"]).to eq("#{kanji_word}で")
      expect(conjugations["Negative conjunctive"]).to eq("#{kanji_word}ではなくて / #{kanji_word}じゃなくて")
      expect(conjugations["たり form"]).to eq("#{kanji_word}だったり")
      expect(conjugations["Adverbial"]).to eq("#{kanji_word}に")
      expect(conjugations["Nominal"]).to eq("#{kanji_word}さ")
      expect(conjugations["Speculative"]).to eq("#{kanji_word}でしょう / #{kanji_word}だろう")
    end
  end

  context 'with kana word' do
    let(:kana_word) { "げんき" }

    it 'generates the expected conjugations for kana version' do
      naadjective = NaAdjective.new(kana_word)
      conjugations = naadjective.conjugate

      expect(conjugations["Word"]).to eq(kana_word)
      expect(conjugations["Stem"]).to eq(kana_word)
      expect(conjugations["Present"]).to eq("#{kana_word}だ")
      expect(conjugations["Past"]).to eq("#{kana_word}だった")
      expect(conjugations["Negative"]).to eq("#{kana_word}ではない / #{kana_word}じゃない")
      expect(conjugations["Past negative"]).to eq("#{kana_word}ではなかった / #{kana_word}じゃなかった")
      expect(conjugations["Polite present"]).to eq("#{kana_word}です")
      expect(conjugations["Polite past"]).to eq("#{kana_word}でした")
      expect(conjugations["Polite negative"]).to eq("#{kana_word}ではないです / #{kana_word}じゃないです / #{kana_word}ではありません / #{kana_word}じゃありません")
      expect(conjugations["Polite past negative"]).to eq("#{kana_word}ではなかったです / #{kana_word}じゃなかったです / #{kana_word}ではありませんでした / #{kana_word}じゃありませんでした")
      expect(conjugations["たら form"]).to eq("#{kana_word}だったら")
      expect(conjugations["たら negative"]).to eq("#{kana_word}ではなかったら / #{kana_word}じゃなかったら")
      expect(conjugations["ば form"]).to eq("#{kana_word}であれば / #{kana_word}なら（ば）")
      expect(conjugations["ば negative"]).to eq("#{kana_word}ではなければ / #{kana_word}じゃなければ")
      expect(conjugations["Conjunctive"]).to eq("#{kana_word}で")
      expect(conjugations["Negative conjunctive"]).to eq("#{kana_word}ではなくて / #{kana_word}じゃなくて")
      expect(conjugations["たり form"]).to eq("#{kana_word}だったり")
      expect(conjugations["Adverbial"]).to eq("#{kana_word}に")
      expect(conjugations["Nominal"]).to eq("#{kana_word}さ")
      expect(conjugations["Speculative"]).to eq("#{kana_word}でしょう / #{kana_word}だろう")
    end
  end
end


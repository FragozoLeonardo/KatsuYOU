require './lib/name'

RSpec.describe Name do
  context 'with kanji word' do
    let(:kanji_name) { "会社員" }

    it 'generates the expected conjugations for kanji version' do
      name = Name.new(kanji_name)

      conjugations = name.conjugate

      expect(conjugations["Word"]).to eq(kanji_name)
      expect(conjugations["Stem"]).to eq(kanji_name)
      expect(conjugations["Present"]).to eq("#{kanji_name}だ")
      expect(conjugations["Past"]).to eq("#{kanji_name}だった")
      expect(conjugations["Negative"]).to eq("#{kanji_name}ではない / #{kanji_name}じゃない")
    end
  end

  context 'with kana word' do
    let(:kana_name) { "かいしゃいん" }

    it 'generates the expected conjugations for kana version' do
      name = Name.new(kana_name)

      conjugations = name.conjugate

      expect(conjugations["Word"]).to eq(kana_name)
      expect(conjugations["Stem"]).to eq(kana_name)
      expect(conjugations["Present"]).to eq("#{kana_name}だ")
      expect(conjugations["Past"]).to eq("#{kana_name}だった")
      expect(conjugations["Negative"]).to eq("#{kana_name}ではない / #{kana_name}じゃない")
    end
  end
end

# frozen_string_literal: true

require './lib/godan_verb'

RSpec.describe GodanVerb do
  context 'with a kanji godan u verb' do
    let(:kanji_u_godan_verb) { '買う' }

    it 'generates the expected conjugations for kanji godan verbs' do
      godan_verb = GodanVerb.new(kanji_u_godan_verb)
      conjugations = godan_verb.conjugate

      u_godan_verb_stem = kanji_u_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_u_godan_verb)
      expect(conjugations['Stem']).to eq("#{u_godan_verb_stem}い")
      expect(conjugations['Present']).to eq(kanji_u_godan_verb)
      expect(conjugations['Past']).to eq("#{u_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{u_godan_verb_stem}わない")
      expect(conjugations['Past negative']).to eq("#{u_godan_verb_stem}わなかった")
      expect(conjugations['Polite present']).to eq("#{u_godan_verb_stem}います")
      expect(conjugations['Polite past']).to eq("#{u_godan_verb_stem}いました")
      expect(conjugations['Polite negative']).to eq("#{u_godan_verb_stem}いません")
      expect(conjugations['Polite past negative']).to eq("#{u_godan_verb_stem}いませんでした")
      expect(conjugations['たら form']).to eq("#{u_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{u_godan_verb_stem}わなかったら")
      expect(conjugations['ば form']).to eq("#{u_godan_verb_stem}えば")
      expect(conjugations['ば negative']).to eq("#{u_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{u_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{u_godan_verb_stem}わなくて")
      expect(conjugations['Without doing']).to eq("#{u_godan_verb_stem}わないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{u_godan_verb_stem}わずに")
      expect(conjugations['Volitional']).to eq("#{u_godan_verb_stem}おう")
      expect(conjugations['Polite volitional']).to eq("#{u_godan_verb_stem}いましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{u_godan_verb_stem}うまい")
      expect(conjugations['First person desire']).to eq("#{u_godan_verb_stem}いたい")
      expect(conjugations['Third person desire']).to eq("#{u_godan_verb_stem}いたがる")
      expect(conjugations['Potential']).to eq("#{u_godan_verb_stem}える")
      expect(conjugations['Passive']).to eq("#{u_godan_verb_stem}われる")
      expect(conjugations['Causative']).to eq("#{u_godan_verb_stem}わせる")
      expect(conjugations['Passive causative']).to eq("#{u_godan_verb_stem}わせられる")
      expect(conjugations['Imperative']).to eq("#{u_godan_verb_stem}え")
      expect(conjugations['Negative imperative']).to eq("#{u_godan_verb_stem}うな")
      expect(conjugations['たり Form']).to eq("#{u_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{u_godan_verb_stem}わぬ / #{u_godan_verb_stem}わん")
    end
  end

  context 'with a kana godan u verb' do
    let(:kana_u_godan_verb) { 'かう' }

    it 'generates the expected conjugations for kanji godan verbs' do
      godan_verb = GodanVerb.new(kana_u_godan_verb)
      conjugations = godan_verb.conjugate

      u_godan_verb_stem = kana_u_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_u_godan_verb)
      expect(conjugations['Stem']).to eq("#{u_godan_verb_stem}い")
      expect(conjugations['Present']).to eq(kana_u_godan_verb)
      expect(conjugations['Past']).to eq("#{u_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{u_godan_verb_stem}わない")
      expect(conjugations['Past negative']).to eq("#{u_godan_verb_stem}わなかった")
      expect(conjugations['Polite present']).to eq("#{u_godan_verb_stem}います")
      expect(conjugations['Polite past']).to eq("#{u_godan_verb_stem}いました")
      expect(conjugations['Polite negative']).to eq("#{u_godan_verb_stem}いません")
      expect(conjugations['Polite past negative']).to eq("#{u_godan_verb_stem}いませんでした")
      expect(conjugations['たら form']).to eq("#{u_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{u_godan_verb_stem}わなかったら")
      expect(conjugations['ば form']).to eq("#{u_godan_verb_stem}えば")
      expect(conjugations['ば negative']).to eq("#{u_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{u_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{u_godan_verb_stem}わなくて")
      expect(conjugations['Without doing']).to eq("#{u_godan_verb_stem}わないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{u_godan_verb_stem}わずに")
      expect(conjugations['Volitional']).to eq("#{u_godan_verb_stem}おう")
      expect(conjugations['Polite volitional']).to eq("#{u_godan_verb_stem}いましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{u_godan_verb_stem}うまい")
      expect(conjugations['First person desire']).to eq("#{u_godan_verb_stem}いたい")
      expect(conjugations['Third person desire']).to eq("#{u_godan_verb_stem}いたがる")
      expect(conjugations['Potential']).to eq("#{u_godan_verb_stem}える")
      expect(conjugations['Passive']).to eq("#{u_godan_verb_stem}われる")
      expect(conjugations['Causative']).to eq("#{u_godan_verb_stem}わせる")
      expect(conjugations['Passive causative']).to eq("#{u_godan_verb_stem}わせられる")
      expect(conjugations['Imperative']).to eq("#{u_godan_verb_stem}え")
      expect(conjugations['Negative imperative']).to eq("#{u_godan_verb_stem}うな")
      expect(conjugations['たり Form']).to eq("#{u_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{u_godan_verb_stem}わぬ / #{u_godan_verb_stem}わん")
    end
  end

  context 'with a kanji godan ku verb' do
    let(:kanji_ku_godan_verb) { '書く' }

    it 'generates the expected conjugations for kanji godan ku verbs' do
      godan_verb = GodanVerb.new(kanji_ku_godan_verb)
      conjugations = godan_verb.conjugate

      ku_godan_verb_stem = kanji_ku_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_ku_godan_verb)
      expect(conjugations['Stem']).to eq("#{ku_godan_verb_stem}き")
      expect(conjugations['Present']).to eq(kanji_ku_godan_verb)
      expect(conjugations['Past']).to eq("#{ku_godan_verb_stem}いた")
      expect(conjugations['Negative']).to eq("#{ku_godan_verb_stem}かない")
      expect(conjugations['Past negative']).to eq("#{ku_godan_verb_stem}かなかった")
      expect(conjugations['Polite present']).to eq("#{ku_godan_verb_stem}きます")
      expect(conjugations['Polite past']).to eq("#{ku_godan_verb_stem}きました")
      expect(conjugations['Polite negative']).to eq("#{ku_godan_verb_stem}きません")
      expect(conjugations['Polite past negative']).to eq("#{ku_godan_verb_stem}きませんでした")
      expect(conjugations['たら form']).to eq("#{ku_godan_verb_stem}いたら")
      expect(conjugations['たら negative']).to eq("#{ku_godan_verb_stem}かなかったら")
      expect(conjugations['ば form']).to eq("#{ku_godan_verb_stem}けば")
      expect(conjugations['ば negative']).to eq("#{ku_godan_verb_stem}けなければ")
      expect(conjugations['Conjunctive']).to eq("#{ku_godan_verb_stem}いて")
      expect(conjugations['Negative conjunctive']).to eq("#{ku_godan_verb_stem}かなくて")
      expect(conjugations['Without doing']).to eq("#{ku_godan_verb_stem}かないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{ku_godan_verb_stem}かずに")
      expect(conjugations['Volitional']).to eq("#{ku_godan_verb_stem}こう")
      expect(conjugations['Polite volitional']).to eq("#{ku_godan_verb_stem}きましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{ku_godan_verb_stem}くまい")
      expect(conjugations['First person desire']).to eq("#{ku_godan_verb_stem}きたい")
      expect(conjugations['Third person desire']).to eq("#{ku_godan_verb_stem}きたがる")
      expect(conjugations['Potential']).to eq("#{ku_godan_verb_stem}ける")
      expect(conjugations['Passive']).to eq("#{ku_godan_verb_stem}かれる")
      expect(conjugations['Causative']).to eq("#{ku_godan_verb_stem}かせる")
      expect(conjugations['Passive causative']).to eq("#{ku_godan_verb_stem}かせられる")
      expect(conjugations['Imperative']).to eq("#{ku_godan_verb_stem}け")
      expect(conjugations['Negative imperative']).to eq("#{ku_godan_verb_stem}くな")
      expect(conjugations['たり Form']).to eq("#{ku_godan_verb_stem}いたり")
      expect(conjugations['Old negative']).to eq("#{ku_godan_verb_stem}かぬ / #{ku_godan_verb_stem}かん")
    end
  end

  context 'with a kana godan ku verb' do
    let(:kana_ku_godan_verb) { 'かく' }

    it 'generates the expected conjugations for kanji godan ku verbs' do
      godan_verb = GodanVerb.new(kana_ku_godan_verb)
      conjugations = godan_verb.conjugate

      ku_godan_verb_stem = kana_ku_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_ku_godan_verb)
      expect(conjugations['Stem']).to eq("#{ku_godan_verb_stem}き")
      expect(conjugations['Present']).to eq(kana_ku_godan_verb)
      expect(conjugations['Past']).to eq("#{ku_godan_verb_stem}いた")
      expect(conjugations['Negative']).to eq("#{ku_godan_verb_stem}かない")
      expect(conjugations['Past negative']).to eq("#{ku_godan_verb_stem}かなかった")
      expect(conjugations['Polite present']).to eq("#{ku_godan_verb_stem}きます")
      expect(conjugations['Polite past']).to eq("#{ku_godan_verb_stem}きました")
      expect(conjugations['Polite negative']).to eq("#{ku_godan_verb_stem}きません")
      expect(conjugations['Polite past negative']).to eq("#{ku_godan_verb_stem}きませんでした")
      expect(conjugations['たら form']).to eq("#{ku_godan_verb_stem}いたら")
      expect(conjugations['たら negative']).to eq("#{ku_godan_verb_stem}かなかったら")
      expect(conjugations['ば form']).to eq("#{ku_godan_verb_stem}けば")
      expect(conjugations['ば negative']).to eq("#{ku_godan_verb_stem}けなければ")
      expect(conjugations['Conjunctive']).to eq("#{ku_godan_verb_stem}いて")
      expect(conjugations['Negative conjunctive']).to eq("#{ku_godan_verb_stem}かなくて")
      expect(conjugations['Without doing']).to eq("#{ku_godan_verb_stem}かないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{ku_godan_verb_stem}かずに")
      expect(conjugations['Volitional']).to eq("#{ku_godan_verb_stem}こう")
      expect(conjugations['Polite volitional']).to eq("#{ku_godan_verb_stem}きましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{ku_godan_verb_stem}くまい")
      expect(conjugations['First person desire']).to eq("#{ku_godan_verb_stem}きたい")
      expect(conjugations['Third person desire']).to eq("#{ku_godan_verb_stem}きたがる")
      expect(conjugations['Potential']).to eq("#{ku_godan_verb_stem}ける")
      expect(conjugations['Passive']).to eq("#{ku_godan_verb_stem}かれる")
      expect(conjugations['Causative']).to eq("#{ku_godan_verb_stem}かせる")
      expect(conjugations['Passive causative']).to eq("#{ku_godan_verb_stem}かせられる")
      expect(conjugations['Imperative']).to eq("#{ku_godan_verb_stem}け")
      expect(conjugations['Negative imperative']).to eq("#{ku_godan_verb_stem}くな")
      expect(conjugations['たり Form']).to eq("#{ku_godan_verb_stem}いたり")
      expect(conjugations['Old negative']).to eq("#{ku_godan_verb_stem}かぬ / #{ku_godan_verb_stem}かん")
    end
  end

  context 'with a kanji godan gu verb' do
    let(:kanji_gu_godan_verb) { '泳ぐ' }

    it 'generates the expected conjugations for kanji godan gu verbs' do
      godan_verb = GodanVerb.new(kanji_gu_godan_verb)
      conjugations = godan_verb.conjugate

      gu_godan_verb_stem = kanji_gu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_gu_godan_verb)
      expect(conjugations['Stem']).to eq("#{gu_godan_verb_stem}ぎ")
      expect(conjugations['Present']).to eq(kanji_gu_godan_verb)
      expect(conjugations['Past']).to eq("#{gu_godan_verb_stem}いだ")
      expect(conjugations['Negative']).to eq("#{gu_godan_verb_stem}かない")
      expect(conjugations['Past negative']).to eq("#{gu_godan_verb_stem}がなかった")
      expect(conjugations['Polite present']).to eq("#{gu_godan_verb_stem}ぎます")
      expect(conjugations['Polite past']).to eq("#{gu_godan_verb_stem}ぎました")
      expect(conjugations['Polite negative']).to eq("#{gu_godan_verb_stem}ぎません")
      expect(conjugations['Polite past negative']).to eq("#{gu_godan_verb_stem}ぎませんでした")
      expect(conjugations['たら form']).to eq("#{gu_godan_verb_stem}いだら")
      expect(conjugations['たら negative']).to eq("#{gu_godan_verb_stem}がなかったら")
      expect(conjugations['ば form']).to eq("#{gu_godan_verb_stem}げば")
      expect(conjugations['ば negative']).to eq("#{gu_godan_verb_stem}げなければ")
      expect(conjugations['Conjunctive']).to eq("#{gu_godan_verb_stem}いで")
      expect(conjugations['Negative conjunctive']).to eq("#{gu_godan_verb_stem}がなくて")
      expect(conjugations['Without doing']).to eq("#{gu_godan_verb_stem}がないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{gu_godan_verb_stem}がずに")
      expect(conjugations['Volitional']).to eq("#{gu_godan_verb_stem}ごう")
      expect(conjugations['Polite volitional']).to eq("#{gu_godan_verb_stem}ぎましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{gu_godan_verb_stem}ぐまい")
      expect(conjugations['First person desire']).to eq("#{gu_godan_verb_stem}ぎたい")
      expect(conjugations['Third person desire']).to eq("#{gu_godan_verb_stem}ぎたがる")
      expect(conjugations['Potential']).to eq("#{gu_godan_verb_stem}げる")
      expect(conjugations['Passive']).to eq("#{gu_godan_verb_stem}がれる")
      expect(conjugations['Causative']).to eq("#{gu_godan_verb_stem}がせる")
      expect(conjugations['Passive causative']).to eq("#{gu_godan_verb_stem}がせられる")
      expect(conjugations['Imperative']).to eq("#{gu_godan_verb_stem}け")
      expect(conjugations['Negative imperative']).to eq("#{gu_godan_verb_stem}ぐな")
      expect(conjugations['たり Form']).to eq("#{gu_godan_verb_stem}いだり")
      expect(conjugations['Old negative']).to eq("#{gu_godan_verb_stem}がぬ / #{gu_godan_verb_stem}がん")
    end
  end

  context 'with a kana godan gu verb' do
    let(:kana_gu_godan_verb) { 'およぐ' }

    it 'generates the expected conjugations for kana godan gu verbs' do
      godan_verb = GodanVerb.new(kana_gu_godan_verb)
      conjugations = godan_verb.conjugate

      gu_godan_verb_stem = kana_gu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_gu_godan_verb)
      expect(conjugations['Stem']).to eq("#{gu_godan_verb_stem}ぎ")
      expect(conjugations['Present']).to eq(kana_gu_godan_verb)
      expect(conjugations['Past']).to eq("#{gu_godan_verb_stem}いだ")
      expect(conjugations['Negative']).to eq("#{gu_godan_verb_stem}かない")
      expect(conjugations['Past negative']).to eq("#{gu_godan_verb_stem}がなかった")
      expect(conjugations['Polite present']).to eq("#{gu_godan_verb_stem}ぎます")
      expect(conjugations['Polite past']).to eq("#{gu_godan_verb_stem}ぎました")
      expect(conjugations['Polite negative']).to eq("#{gu_godan_verb_stem}ぎません")
      expect(conjugations['Polite past negative']).to eq("#{gu_godan_verb_stem}ぎませんでした")
      expect(conjugations['たら form']).to eq("#{gu_godan_verb_stem}いだら")
      expect(conjugations['たら negative']).to eq("#{gu_godan_verb_stem}がなかったら")
      expect(conjugations['ば form']).to eq("#{gu_godan_verb_stem}げば")
      expect(conjugations['ば negative']).to eq("#{gu_godan_verb_stem}げなければ")
      expect(conjugations['Conjunctive']).to eq("#{gu_godan_verb_stem}いで")
      expect(conjugations['Negative conjunctive']).to eq("#{gu_godan_verb_stem}がなくて")
      expect(conjugations['Without doing']).to eq("#{gu_godan_verb_stem}がないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{gu_godan_verb_stem}がずに")
      expect(conjugations['Volitional']).to eq("#{gu_godan_verb_stem}ごう")
      expect(conjugations['Polite volitional']).to eq("#{gu_godan_verb_stem}ぎましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{gu_godan_verb_stem}ぐまい")
      expect(conjugations['First person desire']).to eq("#{gu_godan_verb_stem}ぎたい")
      expect(conjugations['Third person desire']).to eq("#{gu_godan_verb_stem}ぎたがる")
      expect(conjugations['Potential']).to eq("#{gu_godan_verb_stem}げる")
      expect(conjugations['Passive']).to eq("#{gu_godan_verb_stem}がれる")
      expect(conjugations['Causative']).to eq("#{gu_godan_verb_stem}がせる")
      expect(conjugations['Passive causative']).to eq("#{gu_godan_verb_stem}がせられる")
      expect(conjugations['Imperative']).to eq("#{gu_godan_verb_stem}け")
      expect(conjugations['Negative imperative']).to eq("#{gu_godan_verb_stem}ぐな")
      expect(conjugations['たり Form']).to eq("#{gu_godan_verb_stem}いだり")
      expect(conjugations['Old negative']).to eq("#{gu_godan_verb_stem}がぬ / #{gu_godan_verb_stem}がん")
    end
  end

  context 'with a kanji godan su verb' do
    let(:kanji_su_godan_verb) { '話す' }

    it 'generates the expected conjugations for kanji godan su verb' do
      godan_verb = GodanVerb.new(kanji_su_godan_verb)
      conjugations = godan_verb.conjugate

      su_godan_verb_stem = kanji_su_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_su_godan_verb)
      expect(conjugations['Stem']).to eq("#{su_godan_verb_stem}し")
      expect(conjugations['Present']).to eq(kanji_su_godan_verb)
      expect(conjugations['Past']).to eq("#{su_godan_verb_stem}した")
      expect(conjugations['Negative']).to eq("#{su_godan_verb_stem}さない")
      expect(conjugations['Past negative']).to eq("#{su_godan_verb_stem}さなかった")
      expect(conjugations['Polite present']).to eq("#{su_godan_verb_stem}します")
      expect(conjugations['Polite past']).to eq("#{su_godan_verb_stem}しました")
      expect(conjugations['Polite negative']).to eq("#{su_godan_verb_stem}しません")
      expect(conjugations['Polite past negative']).to eq("#{su_godan_verb_stem}しませんでした")
      expect(conjugations['たら form']).to eq("#{su_godan_verb_stem}したら")
      expect(conjugations['たら negative']).to eq("#{su_godan_verb_stem}さなかったら")
      expect(conjugations['ば form']).to eq("#{su_godan_verb_stem}せば")
      expect(conjugations['ば negative']).to eq("#{su_godan_verb_stem}せなければ")
      expect(conjugations['Conjunctive']).to eq("#{su_godan_verb_stem}して")
      expect(conjugations['Negative conjunctive']).to eq("#{su_godan_verb_stem}さなくて")
      expect(conjugations['Without doing']).to eq("#{su_godan_verb_stem}さないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{su_godan_verb_stem}さずに")
      expect(conjugations['Volitional']).to eq("#{su_godan_verb_stem}そう")
      expect(conjugations['Polite volitional']).to eq("#{su_godan_verb_stem}しましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{su_godan_verb_stem}すまい")
      expect(conjugations['First person desire']).to eq("#{su_godan_verb_stem}したい")
      expect(conjugations['Third person desire']).to eq("#{su_godan_verb_stem}したがる")
      expect(conjugations['Potential']).to eq("#{su_godan_verb_stem}せる")
      expect(conjugations['Passive']).to eq("#{su_godan_verb_stem}れる")
      expect(conjugations['Causative']).to eq("#{su_godan_verb_stem}させる")
      expect(conjugations['Passive causative']).to eq("#{su_godan_verb_stem}させられる")
      expect(conjugations['Imperative']).to eq("#{su_godan_verb_stem}せ")
      expect(conjugations['Negative imperative']).to eq("#{su_godan_verb_stem}すな")
      expect(conjugations['たり Form']).to eq("#{su_godan_verb_stem}したり")
      expect(conjugations['Old negative']).to eq("#{su_godan_verb_stem}さぬ / #{su_godan_verb_stem}さん")
    end
  end

  context 'with a kana godan su verb' do
    let(:kana_su_godan_verb) { 'はなす' }

    it 'generates the expected conjugations for kana godan su verb' do
      godan_verb = GodanVerb.new(kana_su_godan_verb)
      conjugations = godan_verb.conjugate

      su_godan_verb_stem = kana_su_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_su_godan_verb)
      expect(conjugations['Stem']).to eq("#{su_godan_verb_stem}し")
      expect(conjugations['Present']).to eq(kana_su_godan_verb)
      expect(conjugations['Past']).to eq("#{su_godan_verb_stem}した")
      expect(conjugations['Negative']).to eq("#{su_godan_verb_stem}さない")
      expect(conjugations['Past negative']).to eq("#{su_godan_verb_stem}さなかった")
      expect(conjugations['Polite present']).to eq("#{su_godan_verb_stem}します")
      expect(conjugations['Polite past']).to eq("#{su_godan_verb_stem}しました")
      expect(conjugations['Polite negative']).to eq("#{su_godan_verb_stem}しません")
      expect(conjugations['Polite past negative']).to eq("#{su_godan_verb_stem}しませんでした")
      expect(conjugations['たら form']).to eq("#{su_godan_verb_stem}したら")
      expect(conjugations['たら negative']).to eq("#{su_godan_verb_stem}さなかったら")
      expect(conjugations['ば form']).to eq("#{su_godan_verb_stem}せば")
      expect(conjugations['ば negative']).to eq("#{su_godan_verb_stem}せなければ")
      expect(conjugations['Conjunctive']).to eq("#{su_godan_verb_stem}して")
      expect(conjugations['Negative conjunctive']).to eq("#{su_godan_verb_stem}さなくて")
      expect(conjugations['Without doing']).to eq("#{su_godan_verb_stem}さないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{su_godan_verb_stem}さずに")
      expect(conjugations['Volitional']).to eq("#{su_godan_verb_stem}そう")
      expect(conjugations['Polite volitional']).to eq("#{su_godan_verb_stem}しましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{su_godan_verb_stem}すまい")
      expect(conjugations['First person desire']).to eq("#{su_godan_verb_stem}したい")
      expect(conjugations['Third person desire']).to eq("#{su_godan_verb_stem}したがる")
      expect(conjugations['Potential']).to eq("#{su_godan_verb_stem}せる")
      expect(conjugations['Passive']).to eq("#{su_godan_verb_stem}れる")
      expect(conjugations['Causative']).to eq("#{su_godan_verb_stem}させる")
      expect(conjugations['Passive causative']).to eq("#{su_godan_verb_stem}させられる")
      expect(conjugations['Imperative']).to eq("#{su_godan_verb_stem}せ")
      expect(conjugations['Negative imperative']).to eq("#{su_godan_verb_stem}すな")
      expect(conjugations['たり Form']).to eq("#{su_godan_verb_stem}したり")
      expect(conjugations['Old negative']).to eq("#{su_godan_verb_stem}さぬ / #{su_godan_verb_stem}さん")
    end
  end

  context 'with a kanji godan tsu verb' do
    let(:kanji_tsu_godan_verb) { '立つ' }

    it 'generates the expected conjugations for kanji godan tsu verbs' do
      godan_verb = GodanVerb.new(kanji_tsu_godan_verb)
      conjugations = godan_verb.conjugate

      tsu_godan_verb_stem = kanji_tsu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_tsu_godan_verb)
      expect(conjugations['Stem']).to eq("#{tsu_godan_verb_stem}ち")
      expect(conjugations['Present']).to eq(kanji_tsu_godan_verb)
      expect(conjugations['Past']).to eq("#{tsu_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{tsu_godan_verb_stem}たない")
      expect(conjugations['Past negative']).to eq("#{tsu_godan_verb_stem}たなかった")
      expect(conjugations['Polite present']).to eq("#{tsu_godan_verb_stem}ちます")
      expect(conjugations['Polite past']).to eq("#{tsu_godan_verb_stem}ちました")
      expect(conjugations['Polite negative']).to eq("#{tsu_godan_verb_stem}ちません")
      expect(conjugations['Polite past negative']).to eq("#{tsu_godan_verb_stem}ちませんでした")
      expect(conjugations['たら form']).to eq("#{tsu_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{tsu_godan_verb_stem}たなかったら")
      expect(conjugations['ば form']).to eq("#{tsu_godan_verb_stem}てば")
      expect(conjugations['ば negative']).to eq("#{tsu_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{tsu_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{tsu_godan_verb_stem}ってなくて")
      expect(conjugations['Without doing']).to eq("#{tsu_godan_verb_stem}たないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{tsu_godan_verb_stem}たずに")
      expect(conjugations['Volitional']).to eq("#{tsu_godan_verb_stem}とう")
      expect(conjugations['Polite volitional']).to eq("#{tsu_godan_verb_stem}ちましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{tsu_godan_verb_stem}つまい")
      expect(conjugations['First person desire']).to eq("#{tsu_godan_verb_stem}ちたい")
      expect(conjugations['Third person desire']).to eq("#{tsu_godan_verb_stem}ちたがる")
      expect(conjugations['Potential']).to eq("#{tsu_godan_verb_stem}てる")
      expect(conjugations['Passive']).to eq("#{tsu_godan_verb_stem}たれる")
      expect(conjugations['Causative']).to eq("#{tsu_godan_verb_stem}たせる")
      expect(conjugations['Passive causative']).to eq("#{tsu_godan_verb_stem}たせられる")
      expect(conjugations['Imperative']).to eq("#{tsu_godan_verb_stem}て")
      expect(conjugations['Negative imperative']).to eq("#{tsu_godan_verb_stem}つな")
      expect(conjugations['たり Form']).to eq("#{tsu_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{tsu_godan_verb_stem}たぬ / #{tsu_godan_verb_stem}たん")
    end
  end

  context 'with a kana godan tsu verb' do
    let(:kana_tsu_godan_verb) { 'たつ' }

    it 'generates the expected conjugations for kana godan tsu verbs' do
      godan_verb = GodanVerb.new(kana_tsu_godan_verb)
      conjugations = godan_verb.conjugate

      tsu_godan_verb_stem = kana_tsu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_tsu_godan_verb)
      expect(conjugations['Stem']).to eq("#{tsu_godan_verb_stem}ち")
      expect(conjugations['Present']).to eq(kana_tsu_godan_verb)
      expect(conjugations['Past']).to eq("#{tsu_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{tsu_godan_verb_stem}たない")
      expect(conjugations['Past negative']).to eq("#{tsu_godan_verb_stem}たなかった")
      expect(conjugations['Polite present']).to eq("#{tsu_godan_verb_stem}ちます")
      expect(conjugations['Polite past']).to eq("#{tsu_godan_verb_stem}ちました")
      expect(conjugations['Polite negative']).to eq("#{tsu_godan_verb_stem}ちません")
      expect(conjugations['Polite past negative']).to eq("#{tsu_godan_verb_stem}ちませんでした")
      expect(conjugations['たら form']).to eq("#{tsu_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{tsu_godan_verb_stem}たなかったら")
      expect(conjugations['ば form']).to eq("#{tsu_godan_verb_stem}てば")
      expect(conjugations['ば negative']).to eq("#{tsu_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{tsu_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{tsu_godan_verb_stem}ってなくて")
      expect(conjugations['Without doing']).to eq("#{tsu_godan_verb_stem}たないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{tsu_godan_verb_stem}たずに")
      expect(conjugations['Volitional']).to eq("#{tsu_godan_verb_stem}とう")
      expect(conjugations['Polite volitional']).to eq("#{tsu_godan_verb_stem}ちましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{tsu_godan_verb_stem}つまい")
      expect(conjugations['First person desire']).to eq("#{tsu_godan_verb_stem}ちたい")
      expect(conjugations['Third person desire']).to eq("#{tsu_godan_verb_stem}ちたがる")
      expect(conjugations['Potential']).to eq("#{tsu_godan_verb_stem}てる")
      expect(conjugations['Passive']).to eq("#{tsu_godan_verb_stem}たれる")
      expect(conjugations['Causative']).to eq("#{tsu_godan_verb_stem}たせる")
      expect(conjugations['Passive causative']).to eq("#{tsu_godan_verb_stem}たせられる")
      expect(conjugations['Imperative']).to eq("#{tsu_godan_verb_stem}て")
      expect(conjugations['Negative imperative']).to eq("#{tsu_godan_verb_stem}つな")
      expect(conjugations['たり Form']).to eq("#{tsu_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{tsu_godan_verb_stem}たぬ / #{tsu_godan_verb_stem}たん")
    end
  end

  context 'with a kanji godan nu verb' do
    let(:kanji_nu_godan_verb) { '死ぬ' }

    it 'generates the expected conjugations for kanji godan nu verb' do
      godan_verb = GodanVerb.new(kanji_nu_godan_verb)
      conjugations = godan_verb.conjugate

      nu_godan_verb_stem = kanji_nu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_nu_godan_verb)
      expect(conjugations['Stem']).to eq("#{nu_godan_verb_stem}に")
      expect(conjugations['Present']).to eq(kanji_nu_godan_verb)
      expect(conjugations['Past']).to eq("#{nu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{nu_godan_verb_stem}なない")
      expect(conjugations['Past negative']).to eq("#{nu_godan_verb_stem}ななかった")
      expect(conjugations['Polite present']).to eq("#{nu_godan_verb_stem}にます")
      expect(conjugations['Polite past']).to eq("#{nu_godan_verb_stem}にました")
      expect(conjugations['Polite negative']).to eq("#{nu_godan_verb_stem}にません")
      expect(conjugations['Polite past negative']).to eq("#{nu_godan_verb_stem}にませんでした")
      expect(conjugations['たら form']).to eq("#{nu_godan_verb_stem}にったら")
      expect(conjugations['たら negative']).to eq("#{nu_godan_verb_stem}ななかったら")
      expect(conjugations['ば form']).to eq("#{nu_godan_verb_stem}ねば")
      expect(conjugations['ば negative']).to eq("#{nu_godan_verb_stem}ななければ")
      expect(conjugations['Conjunctive']).to eq("#{nu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{nu_godan_verb_stem}ななくて")
      expect(conjugations['Without doing']).to eq("#{nu_godan_verb_stem}なないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{nu_godan_verb_stem}なずに")
      expect(conjugations['Volitional']).to eq("#{nu_godan_verb_stem}のう")
      expect(conjugations['Polite volitional']).to eq("#{nu_godan_verb_stem}にましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{nu_godan_verb_stem}ぬまい")
      expect(conjugations['First person desire']).to eq("#{nu_godan_verb_stem}にたい")
      expect(conjugations['Third person desire']).to eq("#{nu_godan_verb_stem}にたがる")
      expect(conjugations['Potential']).to eq("#{nu_godan_verb_stem}ねる")
      expect(conjugations['Passive']).to eq("#{nu_godan_verb_stem}なれる")
      expect(conjugations['Causative']).to eq("#{nu_godan_verb_stem}なせる")
      expect(conjugations['Passive causative']).to eq("#{nu_godan_verb_stem}なせられる")
      expect(conjugations['Imperative']).to eq("#{nu_godan_verb_stem}ね")
      expect(conjugations['Negative imperative']).to eq("#{nu_godan_verb_stem}ぬな")
      expect(conjugations['たり Form']).to eq("#{nu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{nu_godan_verb_stem}なぬ / #{nu_godan_verb_stem}なん")
    end
  end

  context 'with a kana godan nu verb' do
    let(:kana_nu_godan_verb) { 'しぬ' }

    it 'generates the expected conjugations for kana godan nu verb' do
      godan_verb = GodanVerb.new(kana_nu_godan_verb)
      conjugations = godan_verb.conjugate

      nu_godan_verb_stem = kana_nu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_nu_godan_verb)
      expect(conjugations['Stem']).to eq("#{nu_godan_verb_stem}に")
      expect(conjugations['Present']).to eq(kana_nu_godan_verb)
      expect(conjugations['Past']).to eq("#{nu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{nu_godan_verb_stem}なない")
      expect(conjugations['Past negative']).to eq("#{nu_godan_verb_stem}ななかった")
      expect(conjugations['Polite present']).to eq("#{nu_godan_verb_stem}にます")
      expect(conjugations['Polite past']).to eq("#{nu_godan_verb_stem}にました")
      expect(conjugations['Polite negative']).to eq("#{nu_godan_verb_stem}にません")
      expect(conjugations['Polite past negative']).to eq("#{nu_godan_verb_stem}にませんでした")
      expect(conjugations['たら form']).to eq("#{nu_godan_verb_stem}にったら")
      expect(conjugations['たら negative']).to eq("#{nu_godan_verb_stem}ななかったら")
      expect(conjugations['ば form']).to eq("#{nu_godan_verb_stem}ねば")
      expect(conjugations['ば negative']).to eq("#{nu_godan_verb_stem}ななければ")
      expect(conjugations['Conjunctive']).to eq("#{nu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{nu_godan_verb_stem}ななくて")
      expect(conjugations['Without doing']).to eq("#{nu_godan_verb_stem}なないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{nu_godan_verb_stem}なずに")
      expect(conjugations['Volitional']).to eq("#{nu_godan_verb_stem}のう")
      expect(conjugations['Polite volitional']).to eq("#{nu_godan_verb_stem}にましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{nu_godan_verb_stem}ぬまい")
      expect(conjugations['First person desire']).to eq("#{nu_godan_verb_stem}にたい")
      expect(conjugations['Third person desire']).to eq("#{nu_godan_verb_stem}にたがる")
      expect(conjugations['Potential']).to eq("#{nu_godan_verb_stem}ねる")
      expect(conjugations['Passive']).to eq("#{nu_godan_verb_stem}なれる")
      expect(conjugations['Causative']).to eq("#{nu_godan_verb_stem}なせる")
      expect(conjugations['Passive causative']).to eq("#{nu_godan_verb_stem}なせられる")
      expect(conjugations['Imperative']).to eq("#{nu_godan_verb_stem}ね")
      expect(conjugations['Negative imperative']).to eq("#{nu_godan_verb_stem}ぬな")
      expect(conjugations['たり Form']).to eq("#{nu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{nu_godan_verb_stem}なぬ / #{nu_godan_verb_stem}なん")
    end
  end

  context 'with a kanji godan bu verb' do
    let(:kanji_bu_godan_verb) { '遊ぶ' }

    it 'generates the expected conjugations for kanji godan bu verbs' do
      godan_verb = GodanVerb.new(kanji_bu_godan_verb)
      conjugations = godan_verb.conjugate

      bu_godan_verb_stem = kanji_bu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_bu_godan_verb)
      expect(conjugations['Stem']).to eq("#{bu_godan_verb_stem}び")
      expect(conjugations['Present']).to eq(kanji_bu_godan_verb)
      expect(conjugations['Past']).to eq("#{bu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{bu_godan_verb_stem}ばない")
      expect(conjugations['Past negative']).to eq("#{bu_godan_verb_stem}ばなかった")
      expect(conjugations['Polite present']).to eq("#{bu_godan_verb_stem}びます")
      expect(conjugations['Polite past']).to eq("#{bu_godan_verb_stem}びました")
      expect(conjugations['Polite negative']).to eq("#{bu_godan_verb_stem}びません")
      expect(conjugations['Polite past negative']).to eq("#{bu_godan_verb_stem}びませんでした")
      expect(conjugations['たら form']).to eq("#{bu_godan_verb_stem}んだら")
      expect(conjugations['たら negative']).to eq("#{bu_godan_verb_stem}ばなかったら")
      expect(conjugations['ば form']).to eq("#{bu_godan_verb_stem}べば")
      expect(conjugations['ば negative']).to eq("#{bu_godan_verb_stem}ばなければ")
      expect(conjugations['Conjunctive']).to eq("#{bu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{bu_godan_verb_stem}ばなくて")
      expect(conjugations['Without doing']).to eq("#{bu_godan_verb_stem}ばないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{bu_godan_verb_stem}ばずび")
      expect(conjugations['Volitional']).to eq("#{bu_godan_verb_stem}ぼう")
      expect(conjugations['Polite volitional']).to eq("#{bu_godan_verb_stem}びましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{bu_godan_verb_stem}ぶまい")
      expect(conjugations['First person desire']).to eq("#{bu_godan_verb_stem}びたい")
      expect(conjugations['Third person desire']).to eq("#{bu_godan_verb_stem}びたがる")
      expect(conjugations['Potential']).to eq("#{bu_godan_verb_stem}べる")
      expect(conjugations['Passive']).to eq("#{bu_godan_verb_stem}ばれる")
      expect(conjugations['Causative']).to eq("#{bu_godan_verb_stem}ばせる")
      expect(conjugations['Passive causative']).to eq("#{bu_godan_verb_stem}ばせられる")
      expect(conjugations['Imperative']).to eq("#{bu_godan_verb_stem}べ")
      expect(conjugations['Negative imperative']).to eq("#{bu_godan_verb_stem}ぶば")
      expect(conjugations['たり Form']).to eq("#{bu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{bu_godan_verb_stem}ばぶ / #{bu_godan_verb_stem}ばん")
    end
  end

  context 'with a kana godan bu verb' do
    let(:kana_bu_godan_verb) { 'あそぶ' }

    it 'generates the expected conjugations for kana godan bu verbs' do
      godan_verb = GodanVerb.new(kana_bu_godan_verb)
      conjugations = godan_verb.conjugate

      bu_godan_verb_stem = kana_bu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_bu_godan_verb)
      expect(conjugations['Stem']).to eq("#{bu_godan_verb_stem}び")
      expect(conjugations['Present']).to eq(kana_bu_godan_verb)
      expect(conjugations['Past']).to eq("#{bu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{bu_godan_verb_stem}ばない")
      expect(conjugations['Past negative']).to eq("#{bu_godan_verb_stem}ばなかった")
      expect(conjugations['Polite present']).to eq("#{bu_godan_verb_stem}びます")
      expect(conjugations['Polite past']).to eq("#{bu_godan_verb_stem}びました")
      expect(conjugations['Polite negative']).to eq("#{bu_godan_verb_stem}びません")
      expect(conjugations['Polite past negative']).to eq("#{bu_godan_verb_stem}びませんでした")
      expect(conjugations['たら form']).to eq("#{bu_godan_verb_stem}んだら")
      expect(conjugations['たら negative']).to eq("#{bu_godan_verb_stem}ばなかったら")
      expect(conjugations['ば form']).to eq("#{bu_godan_verb_stem}べば")
      expect(conjugations['ば negative']).to eq("#{bu_godan_verb_stem}ばなければ")
      expect(conjugations['Conjunctive']).to eq("#{bu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{bu_godan_verb_stem}ばなくて")
      expect(conjugations['Without doing']).to eq("#{bu_godan_verb_stem}ばないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{bu_godan_verb_stem}ばずび")
      expect(conjugations['Volitional']).to eq("#{bu_godan_verb_stem}ぼう")
      expect(conjugations['Polite volitional']).to eq("#{bu_godan_verb_stem}びましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{bu_godan_verb_stem}ぶまい")
      expect(conjugations['First person desire']).to eq("#{bu_godan_verb_stem}びたい")
      expect(conjugations['Third person desire']).to eq("#{bu_godan_verb_stem}びたがる")
      expect(conjugations['Potential']).to eq("#{bu_godan_verb_stem}べる")
      expect(conjugations['Passive']).to eq("#{bu_godan_verb_stem}ばれる")
      expect(conjugations['Causative']).to eq("#{bu_godan_verb_stem}ばせる")
      expect(conjugations['Passive causative']).to eq("#{bu_godan_verb_stem}ばせられる")
      expect(conjugations['Imperative']).to eq("#{bu_godan_verb_stem}べ")
      expect(conjugations['Negative imperative']).to eq("#{bu_godan_verb_stem}ぶば")
      expect(conjugations['たり Form']).to eq("#{bu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{bu_godan_verb_stem}ばぶ / #{bu_godan_verb_stem}ばん")
    end
  end

  context 'with a kanji godan mu verb' do
    let(:kanji_mu_godan_verb) { '飲む' }

    it 'generates the expected conjugations for kanji godan mu verbs' do
      godan_verb = GodanVerb.new(kanji_mu_godan_verb)
      conjugations = godan_verb.conjugate

      mu_godan_verb_stem = kanji_mu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_mu_godan_verb)
      expect(conjugations['Stem']).to eq("#{mu_godan_verb_stem}み")
      expect(conjugations['Present']).to eq(kanji_mu_godan_verb)
      expect(conjugations['Past']).to eq("#{mu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{mu_godan_verb_stem}まない")
      expect(conjugations['Past negative']).to eq("#{mu_godan_verb_stem}まなかった")
      expect(conjugations['Polite present']).to eq("#{mu_godan_verb_stem}みます")
      expect(conjugations['Polite past']).to eq("#{mu_godan_verb_stem}みました")
      expect(conjugations['Polite negative']).to eq("#{mu_godan_verb_stem}みません")
      expect(conjugations['Polite past negative']).to eq("#{mu_godan_verb_stem}みませんでした")
      expect(conjugations['たら form']).to eq("#{mu_godan_verb_stem}んだら")
      expect(conjugations['たら negative']).to eq("#{mu_godan_verb_stem}まなかったら")
      expect(conjugations['ば form']).to eq("#{mu_godan_verb_stem}めば")
      expect(conjugations['ば negative']).to eq("#{mu_godan_verb_stem}まなければ")
      expect(conjugations['Conjunctive']).to eq("#{mu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{mu_godan_verb_stem}まなくて")
      expect(conjugations['Without doing']).to eq("#{mu_godan_verb_stem}まないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{mu_godan_verb_stem}まずみ")
      expect(conjugations['Volitional']).to eq("#{mu_godan_verb_stem}もう")
      expect(conjugations['Polite volitional']).to eq("#{mu_godan_verb_stem}みましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{mu_godan_verb_stem}むまい")
      expect(conjugations['First person desire']).to eq("#{mu_godan_verb_stem}みたい")
      expect(conjugations['Third person desire']).to eq("#{mu_godan_verb_stem}みたがる")
      expect(conjugations['Potential']).to eq("#{mu_godan_verb_stem}める")
      expect(conjugations['Passive']).to eq("#{mu_godan_verb_stem}まれる")
      expect(conjugations['Causative']).to eq("#{mu_godan_verb_stem}ませる")
      expect(conjugations['Passive causative']).to eq("#{mu_godan_verb_stem}ませられる")
      expect(conjugations['Imperative']).to eq("#{mu_godan_verb_stem}め")
      expect(conjugations['Negative imperative']).to eq("#{mu_godan_verb_stem}むま")
      expect(conjugations['たり Form']).to eq("#{mu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{mu_godan_verb_stem}まむ / #{mu_godan_verb_stem}まん")
    end
  end

  context 'with a kana godan mu verb' do
    let(:kana_mu_godan_verb) { 'のむ' }

    it 'generates the expected conjugations for kana godan mu verbs' do
      godan_verb = GodanVerb.new(kana_mu_godan_verb)
      conjugations = godan_verb.conjugate

      mu_godan_verb_stem = kana_mu_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_mu_godan_verb)
      expect(conjugations['Stem']).to eq("#{mu_godan_verb_stem}み")
      expect(conjugations['Present']).to eq(kana_mu_godan_verb)
      expect(conjugations['Past']).to eq("#{mu_godan_verb_stem}んだ")
      expect(conjugations['Negative']).to eq("#{mu_godan_verb_stem}まない")
      expect(conjugations['Past negative']).to eq("#{mu_godan_verb_stem}まなかった")
      expect(conjugations['Polite present']).to eq("#{mu_godan_verb_stem}みます")
      expect(conjugations['Polite past']).to eq("#{mu_godan_verb_stem}みました")
      expect(conjugations['Polite negative']).to eq("#{mu_godan_verb_stem}みません")
      expect(conjugations['Polite past negative']).to eq("#{mu_godan_verb_stem}みませんでした")
      expect(conjugations['たら form']).to eq("#{mu_godan_verb_stem}んだら")
      expect(conjugations['たら negative']).to eq("#{mu_godan_verb_stem}まなかったら")
      expect(conjugations['ば form']).to eq("#{mu_godan_verb_stem}めば")
      expect(conjugations['ば negative']).to eq("#{mu_godan_verb_stem}まなければ")
      expect(conjugations['Conjunctive']).to eq("#{mu_godan_verb_stem}んで")
      expect(conjugations['Negative conjunctive']).to eq("#{mu_godan_verb_stem}まなくて")
      expect(conjugations['Without doing']).to eq("#{mu_godan_verb_stem}まないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{mu_godan_verb_stem}まずみ")
      expect(conjugations['Volitional']).to eq("#{mu_godan_verb_stem}もう")
      expect(conjugations['Polite volitional']).to eq("#{mu_godan_verb_stem}みましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{mu_godan_verb_stem}むまい")
      expect(conjugations['First person desire']).to eq("#{mu_godan_verb_stem}みたい")
      expect(conjugations['Third person desire']).to eq("#{mu_godan_verb_stem}みたがる")
      expect(conjugations['Potential']).to eq("#{mu_godan_verb_stem}める")
      expect(conjugations['Passive']).to eq("#{mu_godan_verb_stem}まれる")
      expect(conjugations['Causative']).to eq("#{mu_godan_verb_stem}ませる")
      expect(conjugations['Passive causative']).to eq("#{mu_godan_verb_stem}ませられる")
      expect(conjugations['Imperative']).to eq("#{mu_godan_verb_stem}め")
      expect(conjugations['Negative imperative']).to eq("#{mu_godan_verb_stem}むま")
      expect(conjugations['たり Form']).to eq("#{mu_godan_verb_stem}んだり")
      expect(conjugations['Old negative']).to eq("#{mu_godan_verb_stem}まむ / #{mu_godan_verb_stem}まん")
    end
  end

  context 'with a kanji godan ru verb' do
    let(:kanji_ru_godan_verb) { '取る' }

    it 'generates the expected conjugations for kanji godan ru verb' do
      godan_verb = GodanVerb.new(kanji_ru_godan_verb)
      conjugations = godan_verb.conjugate

      ru_godan_verb_stem = kanji_ru_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kanji_ru_godan_verb)
      expect(conjugations['Stem']).to eq("#{ru_godan_verb_stem}り")
      expect(conjugations['Present']).to eq(kanji_ru_godan_verb)
      expect(conjugations['Past']).to eq("#{ru_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{ru_godan_verb_stem}ない")
      expect(conjugations['Past negative']).to eq("#{ru_godan_verb_stem}なかった")
      expect(conjugations['Polite present']).to eq("#{ru_godan_verb_stem}ます")
      expect(conjugations['Polite past']).to eq("#{ru_godan_verb_stem}ました")
      expect(conjugations['Polite negative']).to eq("#{ru_godan_verb_stem}ません")
      expect(conjugations['Polite past negative']).to eq("#{ru_godan_verb_stem}ませんでした")
      expect(conjugations['たら form']).to eq("#{ru_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{ru_godan_verb_stem}なかったら")
      expect(conjugations['ば form']).to eq("#{ru_godan_verb_stem}れば")
      expect(conjugations['ば negative']).to eq("#{ru_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{ru_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{ru_godan_verb_stem}なくて")
      expect(conjugations['Without doing']).to eq("#{ru_godan_verb_stem}ないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{ru_godan_verb_stem}ずに")
      expect(conjugations['Volitional']).to eq("#{ru_godan_verb_stem}ろう")
      expect(conjugations['Polite volitional']).to eq("#{ru_godan_verb_stem}りましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{ru_godan_verb_stem}るまい")
      expect(conjugations['First person desire']).to eq("#{ru_godan_verb_stem}りたい")
      expect(conjugations['Third person desire']).to eq("#{ru_godan_verb_stem}りたがる")
      expect(conjugations['Potential']).to eq("#{ru_godan_verb_stem}れる")
      expect(conjugations['Passive']).to eq("#{ru_godan_verb_stem}られる")
      expect(conjugations['Causative']).to eq("#{ru_godan_verb_stem}させる")
      expect(conjugations['Passive causative']).to eq("#{ru_godan_verb_stem}させられる")
      expect(conjugations['Imperative']).to eq("#{ru_godan_verb_stem}ろ")
      expect(conjugations['Negative imperative']).to eq("#{ru_godan_verb_stem}るな")
      expect(conjugations['たり Form']).to eq("#{ru_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{ru_godan_verb_stem}らぬ / #{ru_godan_verb_stem}らん")
    end
  end

  context 'with a kana godan ru verb' do
    let(:kana_ru_godan_verb) { 'とる' }

    it 'generates the expected conjugations for kana godan ru verb' do
      godan_verb = GodanVerb.new(kana_ru_godan_verb)
      conjugations = godan_verb.conjugate

      ru_godan_verb_stem = kana_ru_godan_verb[0..-2]

      expect(conjugations['Word']).to eq(kana_ru_godan_verb)
      expect(conjugations['Stem']).to eq("#{ru_godan_verb_stem}り")
      expect(conjugations['Present']).to eq(kana_ru_godan_verb)
      expect(conjugations['Past']).to eq("#{ru_godan_verb_stem}った")
      expect(conjugations['Negative']).to eq("#{ru_godan_verb_stem}ない")
      expect(conjugations['Past negative']).to eq("#{ru_godan_verb_stem}なかった")
      expect(conjugations['Polite present']).to eq("#{ru_godan_verb_stem}ます")
      expect(conjugations['Polite past']).to eq("#{ru_godan_verb_stem}ました")
      expect(conjugations['Polite negative']).to eq("#{ru_godan_verb_stem}ません")
      expect(conjugations['Polite past negative']).to eq("#{ru_godan_verb_stem}ませんでした")
      expect(conjugations['たら form']).to eq("#{ru_godan_verb_stem}ったら")
      expect(conjugations['たら negative']).to eq("#{ru_godan_verb_stem}なかったら")
      expect(conjugations['ば form']).to eq("#{ru_godan_verb_stem}れば")
      expect(conjugations['ば negative']).to eq("#{ru_godan_verb_stem}ってなければ")
      expect(conjugations['Conjunctive']).to eq("#{ru_godan_verb_stem}って")
      expect(conjugations['Negative conjunctive']).to eq("#{ru_godan_verb_stem}なくて")
      expect(conjugations['Without doing']).to eq("#{ru_godan_verb_stem}ないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{ru_godan_verb_stem}ずに")
      expect(conjugations['Volitional']).to eq("#{ru_godan_verb_stem}ろう")
      expect(conjugations['Polite volitional']).to eq("#{ru_godan_verb_stem}りましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{ru_godan_verb_stem}るまい")
      expect(conjugations['First person desire']).to eq("#{ru_godan_verb_stem}りたい")
      expect(conjugations['Third person desire']).to eq("#{ru_godan_verb_stem}りたがる")
      expect(conjugations['Potential']).to eq("#{ru_godan_verb_stem}れる")
      expect(conjugations['Passive']).to eq("#{ru_godan_verb_stem}られる")
      expect(conjugations['Causative']).to eq("#{ru_godan_verb_stem}させる")
      expect(conjugations['Passive causative']).to eq("#{ru_godan_verb_stem}させられる")
      expect(conjugations['Imperative']).to eq("#{ru_godan_verb_stem}ろ")
      expect(conjugations['Negative imperative']).to eq("#{ru_godan_verb_stem}るな")
      expect(conjugations['たり Form']).to eq("#{ru_godan_verb_stem}ったり")
      expect(conjugations['Old negative']).to eq("#{ru_godan_verb_stem}らぬ / #{ru_godan_verb_stem}らん")
    end
  end
end

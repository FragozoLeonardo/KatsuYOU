require './lib/irregular_verb'

RSpec.describe IrregularVerb do
  context 'with the verb "行く" (iku)' do
    let(:iku_verb) { "行く" }

    it 'generates the expected conjugations' do
      irregular_verb = IrregularVerb.new(iku_verb)
      conjugations = irregular_verb.iku_conjugations

      iku_stem = iku_verb[-1] == "く" ? iku_verb[0...-1] : iku_verb

      expect(conjugations["Word"]).to eq(iku_verb)
      expect(conjugations["Stem"]).to eq("#{iku_stem}き")
      expect(conjugations["Present"]).to eq(iku_verb)
      expect(conjugations["Past"]).to eq("#{iku_stem}った")
      expect(conjugations["Negative"]).to eq("#{iku_stem}かない")
      expect(conjugations["Past negative"]).to eq("#{iku_stem}かなかった")
      expect(conjugations["Polite present"]).to eq("#{iku_stem}きます")
      expect(conjugations["Polite past"]).to eq("#{iku_stem}きました")
      expect(conjugations["Polite negative"]).to eq("#{iku_stem}ません")
      expect(conjugations["Polite past negative"]).to eq("#{iku_stem}ませんでした")
      expect(conjugations["たら form"]).to eq("#{iku_stem}ったら")
      expect(conjugations["たら negative"]).to eq("#{iku_stem}なかったら")
      expect(conjugations["ば form"]).to eq("#{iku_stem}けば")
      expect(conjugations["ば negative"]).to eq("#{iku_stem}けなければ")
      expect(conjugations["Conjunctive"]).to eq("#{iku_stem}って")
      expect(conjugations["Negative conjunctive"]).to eq("#{iku_stem}かなくて")
      expect(conjugations["Without doing"]).to eq("#{iku_stem}かないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{iku_stem}かずに")
      expect(conjugations["Volitional"]).to eq("#{iku_stem}こう")
      expect(conjugations["Polite volitional"]).to eq("#{iku_stem}きましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{iku_stem}くまい")
      expect(conjugations["First person desire"]).to eq("#{iku_stem}きたい")
      expect(conjugations["Third person desire"]).to eq("#{iku_stem}きたがる")
      expect(conjugations["Potential"]).to eq("#{iku_stem}ける")
      expect(conjugations["Passive"]).to eq("#{iku_stem}かられる")
      expect(conjugations["Causative"]).to eq("#{iku_stem}かさせる")
      expect(conjugations["Passive causative"]).to eq("#{iku_stem}かさせられる")
      expect(conjugations["Imperative"]).to eq("#{iku_stem}け")
      expect(conjugations["Negative imperative"]).to eq("#{iku_stem}くな")
      expect(conjugations["たり Form"]).to eq("#{iku_stem}ったり")
      expect(conjugations["Old negative"]).to eq("#{iku_stem}かぬ / #{iku_stem}かん")
    end
  end

  context 'with the verb "いく" (iku)' do
    let(:iku_verb_kana) { "いく" }

    it 'generates the expected conjugations for kana verb "いく"' do
      irregular_verb = IrregularVerb.new(iku_verb_kana)
      conjugations = irregular_verb.iku_conjugations

      iku_stem_kana = iku_verb_kana[-1] == "く" ? iku_verb_kana[0...-1] : iku_verb_kana

      expect(conjugations["Word"]).to eq(iku_verb_kana)
      expect(conjugations["Stem"]).to eq("#{iku_stem_kana}き")
      expect(conjugations["Present"]).to eq(iku_verb_kana)
      expect(conjugations["Past"]).to eq("#{iku_stem_kana}った")
      expect(conjugations["Negative"]).to eq("#{iku_stem_kana}かない")
      expect(conjugations["Past negative"]).to eq("#{iku_stem_kana}かなかった")
      expect(conjugations["Polite present"]).to eq("#{iku_stem_kana}きます")
      expect(conjugations["Polite past"]).to eq("#{iku_stem_kana}きました")
      expect(conjugations["Polite negative"]).to eq("#{iku_stem_kana}ません")
      expect(conjugations["Polite past negative"]).to eq("#{iku_stem_kana}ませんでした")
      expect(conjugations["たら form"]).to eq("#{iku_stem_kana}ったら")
      expect(conjugations["たら negative"]).to eq("#{iku_stem_kana}なかったら")
      expect(conjugations["ば form"]).to eq("#{iku_stem_kana}けば")
      expect(conjugations["ば negative"]).to eq("#{iku_stem_kana}けなければ")
      expect(conjugations["Conjunctive"]).to eq("#{iku_stem_kana}って")
      expect(conjugations["Negative conjunctive"]).to eq("#{iku_stem_kana}かなくて")
      expect(conjugations["Without doing"]).to eq("#{iku_stem_kana}かないで")
      expect(conjugations["'Formal' without doing"]).to eq("#{iku_stem_kana}かずに")
      expect(conjugations["Volitional"]).to eq("#{iku_stem_kana}こう")
      expect(conjugations["Polite volitional"]).to eq("#{iku_stem_kana}きましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("#{iku_stem_kana}くまい")
      expect(conjugations["First person desire"]).to eq("#{iku_stem_kana}きたい")
      expect(conjugations["Third person desire"]).to eq("#{iku_stem_kana}きたがる")
      expect(conjugations["Potential"]).to eq("#{iku_stem_kana}ける")
      expect(conjugations["Passive"]).to eq("#{iku_stem_kana}かられる")
      expect(conjugations["Causative"]).to eq("#{iku_stem_kana}かさせる")
      expect(conjugations["Passive causative"]).to eq("#{iku_stem_kana}かさせられる")
      expect(conjugations["Imperative"]).to eq("#{iku_stem_kana}け")
      expect(conjugations["Negative imperative"]).to eq("#{iku_stem_kana}くな")
      expect(conjugations["たり Form"]).to eq("#{iku_stem_kana}ったり")
      expect(conjugations["Old negative"]).to eq("#{iku_stem_kana}かぬ / #{iku_stem_kana}かん")
    end
  end

  describe 'with a kou/tou verb "問う"' do
    let(:kou_tou_verb) { IrregularVerb.new("問う") }

    it 'generates the expected conjugations for kou/tou verb' do
      conjugations = kou_tou_verb.kou_tou_conjugations

      expect(conjugations["Word"]).to eq("問う")
      expect(conjugations["Stem"]).to eq("問い")
      expect(conjugations["Present"]).to eq("問う")
      expect(conjugations["Past"]).to eq("問うた")
      expect(conjugations["Negative"]).to eq("問わない")
      expect(conjugations["Past negative"]).to eq("問わなかった")
      expect(conjugations["Polite present"]).to eq("問います")
      expect(conjugations["Polite past"]).to eq("問いました")
      expect(conjugations["Polite negative"]).to eq("問いません")
      expect(conjugations["Polite past negative"]).to eq("問いませんでした")
      expect(conjugations["たら form"]).to eq("問ったら")
      expect(conjugations["たら negative"]).to eq("問わなかったら")
      expect(conjugations["ば form"]).to eq("問えば")
      expect(conjugations["ば negative"]).to eq("問わなければ")
      expect(conjugations["Conjunctive"]).to eq("問うて")
      expect(conjugations["Negative conjunctive"]).to eq("問わなくて")
      expect(conjugations["Without doing"]).to eq("問わないで")
      expect(conjugations["'Formal' without doing"]).to eq("問わずに")
      expect(conjugations["Volitional"]).to eq("問おう")
      expect(conjugations["Polite volitional"]).to eq("問いましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("問うまい")
      expect(conjugations["First person desire"]).to eq("問いたい")
      expect(conjugations["Third person desire"]).to eq("問いたがる")
      expect(conjugations["Potential"]).to eq("問える")
      expect(conjugations["Passive"]).to eq("問われる")
      expect(conjugations["Causative"]).to eq("問わせる")
      expect(conjugations["Passive causative"]).to eq("問わせられる")
      expect(conjugations["Imperative"]).to eq("問え")
      expect(conjugations["Negative imperative"]).to eq("問うな")
      expect(conjugations["たり Form"]).to eq("問うたり")
      expect(conjugations["Old negative"]).to eq("問わぬ / 問わん")
    end
  end

  describe 'with a kana version "とう"' do
    let(:kana_verb) { IrregularVerb.new("とう") }

    it 'generates the expected conjugations for kana verb' do
      conjugations = kana_verb.kou_tou_conjugations

      expect(conjugations["Word"]).to eq("とう")
      expect(conjugations["Stem"]).to eq("とい")
      expect(conjugations["Present"]).to eq("とう")
      expect(conjugations["Past"]).to eq("とうた")
      expect(conjugations["Negative"]).to eq("とわない")
      expect(conjugations["Past negative"]).to eq("とわなかった")
      expect(conjugations["Polite present"]).to eq("といます")
      expect(conjugations["Polite past"]).to eq("といました")
      expect(conjugations["Polite negative"]).to eq("といません")
      expect(conjugations["Polite past negative"]).to eq("といませんでした")
      expect(conjugations["たら form"]).to eq("とったら")
      expect(conjugations["たら negative"]).to eq("とわなかったら")
      expect(conjugations["ば form"]).to eq("とえば")
      expect(conjugations["ば negative"]).to eq("とわなければ")
      expect(conjugations["Conjunctive"]).to eq("とうて")
      expect(conjugations["Negative conjunctive"]).to eq("とわなくて")
      expect(conjugations["Without doing"]).to eq("とわないで")
      expect(conjugations["'Formal' without doing"]).to eq("とわずに")
      expect(conjugations["Volitional"]).to eq("とおう")
      expect(conjugations["Polite volitional"]).to eq("といましょう")
      expect(conjugations["Negative 'formal' volitional"]).to eq("とうまい")
      expect(conjugations["First person desire"]).to eq("といたい")
      expect(conjugations["Third person desire"]).to eq("といたがる")
      expect(conjugations["Potential"]).to eq("とえる")
      expect(conjugations["Passive"]).to eq("とわれる")
      expect(conjugations["Causative"]).to eq("とわせる")
      expect(conjugations["Passive causative"]).to eq("とわせられる")
      expect(conjugations["Imperative"]).to eq("とえ")
      expect(conjugations["Negative imperative"]).to eq("とうな")
      expect(conjugations["たり Form"]).to eq("とうたり")
      expect(conjugations["Old negative"]).to eq("とわぬ / とわん")
  end
end

      context 'with kanji verb "有る"' do
        let(:irregular_verb) { IrregularVerb.new("有る") }
        let(:conjugations) { irregular_verb.aru_conjugations }

        it 'generates the expected conjugations for kanji verb "有る"' do
          expect(conjugations["Word"]).to eq("有る")
          expect(conjugations["Stem"]).to eq("有り")
          expect(conjugations["Present"]).to eq("有る")
          expect(conjugations["Past"]).to eq("有った")
          expect(conjugations["Negative"]).to eq("ない")
          expect(conjugations["Past negative"]).to eq("なかった")
          expect(conjugations["Polite present"]).to eq("有ります")
          expect(conjugations["Polite past"]).to eq("有りました")
          expect(conjugations["Polite negative"]).to eq("有りません")
          expect(conjugations["Polite past negative"]).to eq("有りませんでした")
          expect(conjugations["たら form"]).to eq("有ったら")
          expect(conjugations["たら negative"]).to eq("なかったら")
          expect(conjugations["ば form"]).to eq("有れば")
          expect(conjugations["ば negative"]).to eq("なければ")
          expect(conjugations["Conjunctive"]).to eq("有って")
          expect(conjugations["Negative conjunctive"]).to eq("なくて")
          expect(conjugations["Without doing"]).to eq("有らないで")
          expect(conjugations["'Formal' without doing"]).to eq("有らずに")
          expect(conjugations["Volitional"]).to eq("有ろう")
          expect(conjugations["Polite volitional"]).to eq("有りましょう")
          expect(conjugations["Negative 'formal' volitional"]).to eq("有るまい")
          expect(conjugations["First person desire"]).to eq("有りたい")
          expect(conjugations["Third person desire"]).to eq("有りたがる")
          expect(conjugations["Potential"]).to eq("有りえる")
          expect(conjugations["Imperative"]).to eq("有れ")
          expect(conjugations["Negative imperative"]).to eq("有るな")
          expect(conjugations["たり Form"]).to eq("有ったり")
          expect(conjugations["Old negative"]).to eq("有らぬ / 有らん")
        end
      end

      describe '#aru_conjugations' do
        context 'with verb "ある"' do
          let(:irregular_verb) { IrregularVerb.new("ある") }
          let(:conjugations) { irregular_verb.aru_conjugations }

          it 'generates the expected conjugations for kana verb "ある"' do
            expect(conjugations["Word"]).to eq("ある")
            expect(conjugations["Stem"]).to eq("あり")
            expect(conjugations["Present"]).to eq("ある")
            expect(conjugations["Past"]).to eq("あった")
            expect(conjugations["Negative"]).to eq("ない")
            expect(conjugations["Past negative"]).to eq("なかった")
            expect(conjugations["Polite present"]).to eq("あります")
            expect(conjugations["Polite past"]).to eq("ありました")
            expect(conjugations["Polite negative"]).to eq("ありません")
            expect(conjugations["Polite past negative"]).to eq("ありませんでした")
            expect(conjugations["たら form"]).to eq("あったら")
            expect(conjugations["たら negative"]).to eq("なかったら")
            expect(conjugations["ば form"]).to eq("あれば")
            expect(conjugations["ば negative"]).to eq("なければ")
            expect(conjugations["Conjunctive"]).to eq("あって")
            expect(conjugations["Negative conjunctive"]).to eq("なくて")
            expect(conjugations["Without doing"]).to eq("あらないで")
            expect(conjugations["'Formal' without doing"]).to eq("あらずに")
            expect(conjugations["Volitional"]).to eq("あろう")
            expect(conjugations["Polite volitional"]).to eq("ありましょう")
            expect(conjugations["Negative 'formal' volitional"]).to eq("あるまい")
            expect(conjugations["First person desire"]).to eq("ありたい")
            expect(conjugations["Third person desire"]).to eq("ありたがる")
            expect(conjugations["Potential"]).to eq("ありえる")
            expect(conjugations["Imperative"]).to eq("あれ")
            expect(conjugations["Negative imperative"]).to eq("あるな")
            expect(conjugations["たり Form"]).to eq("あったり")
            expect(conjugations["Old negative"]).to eq("あらぬ / あらん")
          end
        end

                describe '#keigo_aru_conjugations' do
                  context 'with keigo kanji verb "御座る"' do
                    let(:irregular_verb) { IrregularVerb.new("御座る") }
                    let(:conjugations) { irregular_verb.keigo_aru_conjugations }

                    it 'generates the expected conjugations for keigo kanji verb "御座る"' do
                      expect(conjugations["Word"]).to eq("御座る")
                      expect(conjugations["Stem"]).to eq("御座い")
                      expect(conjugations["Present"]).to eq("御座る")
                      expect(conjugations["Past"]).to eq("御座った")
                      expect(conjugations["Negative"]).to eq("御座ない")
                      expect(conjugations["Past negative"]).to eq("御座なかった")
                      expect(conjugations["Polite present"]).to eq("御座います")
                      expect(conjugations["Polite past"]).to eq("御座いました")
                      expect(conjugations["Polite negative"]).to eq("御座いません")
                      expect(conjugations["Polite past negative"]).to eq("御座いませんでした")
                      expect(conjugations["たら form"]).to eq("御座ったら")
                      expect(conjugations["たら negative"]).to eq("御座なかったら")
                      expect(conjugations["ば form"]).to eq("御座れば")
                      expect(conjugations["ば negative"]).to eq("御座なければ")
                      expect(conjugations["Conjunctive"]).to eq("御座って")
                      expect(conjugations["Negative conjunctive"]).to eq("御座なくて")
                      expect(conjugations["Without doing"]).to eq("御座らないで")
                      expect(conjugations["'Formal' without doing"]).to eq("御座らずに")
                      expect(conjugations["Volitional"]).to eq("御座ろう")
                      expect(conjugations["Polite volitional"]).to eq("御座いましょう")
                      expect(conjugations["Negative 'formal' volitional"]).to eq("御座るまい")
                      expect(conjugations["First person desire"]).to eq("御座いたい")
                      expect(conjugations["Third person desire"]).to eq("御座いたがる")
                      expect(conjugations["Potential"]).to eq("御座える")
                      expect(conjugations["Passive"]).to eq("御座られる")
                      expect(conjugations["Causative"]).to eq("御座らせる")
                      expect(conjugations["Passive causative"]).to eq("御座らせられる")
                      expect(conjugations["Imperative"]).to eq("御座い")
                      expect(conjugations["Negative imperative"]).to eq("御座るな")
                      expect(conjugations["たり Form"]).to eq("御座ったり")
                      expect(conjugations["Old negative"]).to eq("御座らぬ / 御座らん")
                    end
                  end

                context 'with keigo kana verb "ござる"' do
                  let(:irregular_verb) { IrregularVerb.new("ござる") }
                  let(:conjugations) { irregular_verb.keigo_aru_conjugations }

                  it 'generates the expected conjugations for keigo verb "ござる"' do
                    expect(conjugations["Word"]).to eq("ござる")
                    expect(conjugations["Stem"]).to eq("ござい")
                    expect(conjugations["Present"]).to eq("ござる")
                    expect(conjugations["Past"]).to eq("ござった")
                    expect(conjugations["Negative"]).to eq("ござない")
                    expect(conjugations["Past negative"]).to eq("ござなかった")
                    expect(conjugations["Polite present"]).to eq("ございます")
                    expect(conjugations["Polite past"]).to eq("ございました")
                    expect(conjugations["Polite negative"]).to eq("ございません")
                    expect(conjugations["Polite past negative"]).to eq("ございませんでした")
                    expect(conjugations["たら form"]).to eq("ござったら")
                    expect(conjugations["たら negative"]).to eq("ござなかったら")
                    expect(conjugations["ば form"]).to eq("ござれば")
                    expect(conjugations["ば negative"]).to eq("ござなければ")
                    expect(conjugations["Conjunctive"]).to eq("ござって")
                    expect(conjugations["Negative conjunctive"]).to eq("ござなくて")
                    expect(conjugations["Without doing"]).to eq("ござらないで")
                    expect(conjugations["'Formal' without doing"]).to eq("ござらずに")
                    expect(conjugations["Volitional"]).to eq("ござろう")
                    expect(conjugations["Polite volitional"]).to eq("ございましょう")
                    expect(conjugations["Negative 'formal' volitional"]).to eq("ござるまい")
                    expect(conjugations["First person desire"]).to eq("ございたい")
                    expect(conjugations["Third person desire"]).to eq("ございたがる")
                    expect(conjugations["Potential"]).to eq("ござえる")
                    expect(conjugations["Passive"]).to eq("ござられる")
                    expect(conjugations["Causative"]).to eq("ござらせる")
                    expect(conjugations["Passive causative"]).to eq("ござらせられる")
                    expect(conjugations["Imperative"]).to eq("ござい")
                    expect(conjugations["Negative imperative"]).to eq("ござるな")
                    expect(conjugations["たり Form"]).to eq("ござったり")
                    expect(conjugations["Old negative"]).to eq("ござらぬ / ござらん")
                  end
                end

              describe '#kuru_conjugations' do
                context 'with verb "持って来る"' do
                  let(:irregular_verb_kanji) { IrregularVerb.new("持って来る") }
                  let(:conjugations_kanji) { irregular_verb_kanji.kuru_conjugations }

                  it 'generates the expected conjugations for verb "持って来る" (Kanji)' do
                    expect(conjugations_kanji['Word']).to eq("持って来る")
                    expect(conjugations_kanji['Stem']).to eq("持って来")
                    expect(conjugations_kanji['Present']).to eq("持って来る")
                    expect(conjugations_kanji['Past']).to eq("持って来た")
                    expect(conjugations_kanji['Negative']).to eq("持って来ない")
                    expect(conjugations_kanji['Past negative']).to eq("持って来なかった")
                    expect(conjugations_kanji['Polite present']).to eq("持って来ます")
                    expect(conjugations_kanji['Polite past']).to eq("持って来ました")
                    expect(conjugations_kanji['Polite negative']).to eq("持って来ません")
                    expect(conjugations_kanji['Polite past negative']).to eq("持って来ませんでした")
                    expect(conjugations_kanji['たら form']).to eq("持って来たら")
                    expect(conjugations_kanji['たら negative']).to eq("持って来なかったら")
                    expect(conjugations_kanji['ば form']).to eq("持って来れば")
                    expect(conjugations_kanji['ば negative']).to eq("持って来なければ")
                    expect(conjugations_kanji['Conjunctive']).to eq("持って来て")
                    expect(conjugations_kanji['Negative conjunctive']).to eq("持って来なくて")
                    expect(conjugations_kanji['Without doing']).to eq("持って来ないで")
                    expect(conjugations_kanji["'Formal' without doing"]).to eq("持って来ずに")
                    expect(conjugations_kanji['Volitional']).to eq("持って来よう")
                    expect(conjugations_kanji['Polite volitional']).to eq("持って来ましょう")
                    expect(conjugations_kanji["Negative 'formal' volitional"]).to eq("持って来まい")
                    expect(conjugations_kanji['First person desire']).to eq("持って来たい")
                    expect(conjugations_kanji['Third person desire']).to eq("持って来たがる")
                    expect(conjugations_kanji['Potential']).to eq("持って来られる")
                    expect(conjugations_kanji['Passive']).to eq("持って来られる")
                    expect(conjugations_kanji['Causative']).to eq("持って来させる")
                    expect(conjugations_kanji['Passive causative']).to eq("持って来させられる")
                    expect(conjugations_kanji['Imperative']).to eq("持って来い")
                    expect(conjugations_kanji['Negative imperative']).to eq("持って来るな")
                    expect(conjugations_kanji['たり Form']).to eq("持って来たり")
                    expect(conjugations_kanji['Old negative']).to eq("持って来らぬ / 持って来らん")
                  end
                end

                context 'with verb "もってくる" (Kana)' do
                  let(:irregular_verb_kana) { IrregularVerb.new("もってくる") }
                  let(:conjugations_kana) { irregular_verb_kana.kuru_conjugations }

                  it 'generates the expected conjugations for verb "もってくる" (Kana)' do
                    expect(conjugations_kana['Word']).to eq("もってくる")
                    expect(conjugations_kana['Stem']).to eq("もってき")
                    expect(conjugations_kana['Present']).to eq("もってくる")
                    expect(conjugations_kana['Past']).to eq("もってきた")
                    expect(conjugations_kana['Negative']).to eq("もってこない")
                    expect(conjugations_kana['Past negative']).to eq("もってこなかった")
                    expect(conjugations_kana['Polite present']).to eq("もってきます")
                    expect(conjugations_kana['Polite past']).to eq("もってきました")
                    expect(conjugations_kana['Polite negative']).to eq("もってきません")
                    expect(conjugations_kana['Polite past negative']).to eq("もってきませんでした")
                    expect(conjugations_kana['たら form']).to eq("もってきたら")
                    expect(conjugations_kana['たら negative']).to eq("もってこなかったら")
                    expect(conjugations_kana['ば form']).to eq("もってければ")
                    expect(conjugations_kana['ば negative']).to eq("もってけなければ")
                    expect(conjugations_kana['Conjunctive']).to eq("もってきて")
                    expect(conjugations_kana['Negative conjunctive']).to eq("もってこなくて")
                    expect(conjugations_kana['Negative conjunctive']).to eq("もってこなくて")
                    expect(conjugations_kana['Without doing']).to eq("もってこないで")
                    expect(conjugations_kana["'Formal' without doing"]).to eq("もってこずに")
                    expect(conjugations_kana['Volitional']).to eq("もってこよう")
                    expect(conjugations_kana['Polite volitional']).to eq("もってきましょう")
                    expect(conjugations_kana["Negative 'formal' volitional"]).to eq("もってくまい")
                    expect(conjugations_kana['First person desire']).to eq("もってきたい")
                    expect(conjugations_kana['Third person desire']).to eq("もってきたがる")
                    expect(conjugations_kana['Potential']).to eq("もってこられる")
                    expect(conjugations_kana['Passive']).to eq("もってこられる")
                    expect(conjugations_kana['Causative']).to eq("もってこさせる")
                    expect(conjugations_kana['Passive causative']).to eq("もってこさせられる")
                    expect(conjugations_kana['Imperative']).to eq("もってこい")
                    expect(conjugations_kana['Negative imperative']).to eq("もってくるな")
                    expect(conjugations_kana['たり Form']).to eq("もってきたり")
                    expect(conjugations_kana['Old negative']).to eq("もってこらぬ / もってこらん")
                  end
                end

                describe '#suru_conjugations' do
                  context 'with suru kanji verb "為る"' do
                    let(:irregular_verb_suru_kanji) { IrregularVerb.new("為る") }
                    let(:conjugations_suru_kanji) { irregular_verb_suru_kanji.suru_conjugations }

                    it 'generates the expected conjugations for suru verb "為る"' do
                      expect(conjugations_suru_kanji["Word"]).to eq("為る")
                      expect(conjugations_suru_kanji["Stem"]).to eq("為")
                      expect(conjugations_suru_kanji["Present"]).to eq("為る")
                      expect(conjugations_suru_kanji["Past"]).to eq("為た")
                      expect(conjugations_suru_kanji["Negative"]).to eq("為ない")
                      expect(conjugations_suru_kanji["Past negative"]).to eq("為なかった")
                      expect(conjugations_suru_kanji["Polite present"]).to eq("為ます")
                      expect(conjugations_suru_kanji["Polite past"]).to eq("為ました")
                      expect(conjugations_suru_kanji["Polite negative"]).to eq("為ません")
                      expect(conjugations_suru_kanji["Polite past negative"]).to eq("為ませんでした")
                      expect(conjugations_suru_kanji["たら form"]).to eq("為たら")
                      expect(conjugations_suru_kanji["たら negative"]).to eq("為なかったら")
                      expect(conjugations_suru_kanji["ば form"]).to eq("為れば")
                      expect(conjugations_suru_kanji["ば negative"]).to eq("為なければ")
                      expect(conjugations_suru_kanji["Conjunctive"]).to eq("為て")
                      expect(conjugations_suru_kanji["Negative conjunctive"]).to eq("為なくて")
                      expect(conjugations_suru_kanji["Without doing"]).to eq("為ないで")
                      expect(conjugations_suru_kanji["'Formal' without doing"]).to eq("為ずに")
                      expect(conjugations_suru_kanji["Volitional"]).to eq("為よう")
                      expect(conjugations_suru_kanji["Polite volitional"]).to eq("為ましょう")
                      expect(conjugations_suru_kanji["Negative 'formal' volitional"]).to eq("為るまい")
                      expect(conjugations_suru_kanji["First person desire"]).to eq("為たい")
                      expect(conjugations_suru_kanji["Third person desire"]).to eq("為たがる")
                      expect(conjugations_suru_kanji["Potential"]).to eq("出来る")
                      expect(conjugations_suru_kanji["Passivee"]).to eq("為れる")
                      expect(conjugations_suru_kanji["Causative"]).to eq("為せる")
                      expect(conjugations_suru_kanji["Passive causative"]).to eq("為せられる")
                      expect(conjugations_suru_kanji["Imperative"]).to eq("為ろ / 為よ")
                      expect(conjugations_suru_kanji["Negative imperative"]).to eq("為るな")
                      expect(conjugations_suru_kanji["たり Form"]).to eq("為たり")
                      expect(conjugations_suru_kanji["Old negative"]).to eq("為ぬ / 為ん")
                    end
                  end
                end

                  context 'with suru kana verb "する"' do
                    let(:irregular_verb_suru) { IrregularVerb.new("する") }
                    let(:conjugations_suru) { irregular_verb_suru.suru_conjugations }

                    it 'generates the expected conjugations for suru verb "する"' do
                      expect(conjugations_suru["Word"]).to eq("する")
                      expect(conjugations_suru["Stem"]).to eq("し")
                      expect(conjugations_suru["Present"]).to eq("する")
                      expect(conjugations_suru["Past"]).to eq("した")
                      expect(conjugations_suru["Negative"]).to eq("しない")
                      expect(conjugations_suru["Past negative"]).to eq("しなかった")
                      expect(conjugations_suru["Polite present"]).to eq("します")
                      expect(conjugations_suru["Polite past"]).to eq("しました")
                      expect(conjugations_suru["Polite negative"]).to eq("しません")
                      expect(conjugations_suru["Polite past negative"]).to eq("しませんでした")
                      expect(conjugations_suru["たら form"]).to eq("したら")
                      expect(conjugations_suru["たら negative"]).to eq("しなかったら")
                      expect(conjugations_suru["ば form"]).to eq("すれば")
                      expect(conjugations_suru["ば negative"]).to eq("しなければ")
                      expect(conjugations_suru["Conjunctive"]).to eq("して")
                      expect(conjugations_suru["Negative conjunctive"]).to eq("しなくて")
                      expect(conjugations_suru["Without doing"]).to eq("しないで")
                      expect(conjugations_suru["'Formal' without doing"]).to eq("せずに")
                      expect(conjugations_suru["Volitional"]).to eq("しよう")
                      expect(conjugations_suru["Polite volitional"]).to eq("しましょう")
                      expect(conjugations_suru["Negative 'formal' volitional"]).to eq("するまい")
                      expect(conjugations_suru["First person desire"]).to eq("したい")
                      expect(conjugations_suru["Third person desire"]).to eq("したがる")
                      expect(conjugations_suru["Potential"]).to eq("できる")
                      expect(conjugations_suru["Passivee"]).to eq("される")
                      expect(conjugations_suru["Causative"]).to eq("させる")
                      expect(conjugations_suru["Passive causative"]).to eq("させられる")
                      expect(conjugations_suru["Imperative"]).to eq("しろ / せよ")
                      expect(conjugations_suru["Negative imperative"]).to eq("するな")
                      expect(conjugations_suru["たり Form"]).to eq("したり")
                      expect(conjugations_suru["Old negative"]).to eq("せぬ / せん")
                    end
                  end
              end
            end
          end
        end

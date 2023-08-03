require_relative 'lib/i_adjective'
require_relative 'lib/na_adjective_name'
require_relative 'lib/ichidan_verb'
require_relative 'lib/godan_verb'
require_relative 'lib/irregular_verb'
module Constants
  VERSION = "v3.8.6"
  MENU_OPTIONS = {
    "Names." => NaAdjectiveName,
    "一段活用 / Group 1 / う Verbs." => IchidanVerb,
    "五段活用 / Group 2 / る Verbs." => GodanVerb,
    "変な活用 / Group 3 / Irregular Verbs." => IrregularVerb,
    "名詞.形容動詞 / Names / な Adjectives." => NaAdjectiveName,
    "形容詞 / い Adjectives." => IAdjective,
    "変な形容詞 / (Irregular) い Adjectives." => IAdjective,
    "Exit" => nil
  }.freeze
end

class Conjugator
  def initialize
    @words = []
  end

  def add_word(word)
    @words << word
  end

  def conjugate_all
    @words.each do |word|
      conjugations = word.conjugate
      conjugations.each do |form, value|
        puts "#{form}: #{value}"
      end
      puts "\n"
    end
  end
end

def display_menu
  puts " 活ヨウ - KatsuYou - a CLI by Leonardo Quadros Fragozo #{Constants::VERSION}"
  puts "\n"
  puts " What do you want to conjugate? - Type the number to select the option."
  puts "\n"
  Constants::MENU_OPTIONS.each_with_index do |(option, _), index|
    puts "#{index + 1} - #{option}"
  end
end

def get_user_input(prompt)
  print prompt
  gets.chomp
end

conjugator = Conjugator.new

loop do
  display_menu
  print "Enter your choice (1-#{Constants::MENU_OPTIONS.size}): "
  choice = gets.chomp.to_i

  selected_option = Constants::MENU_OPTIONS.to_a[choice - 1]
  break if selected_option.nil?

  word_class = selected_option[1]
  print "Enter the word: "
  word = gets.chomp

  word_object = word_class.new(word)
  conjugator.add_word(word_object)

  conjugator.conjugate_all

  puts "\n"
end

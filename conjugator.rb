# frozen_string_literal: true

require_relative 'lib/name'
require_relative 'lib/i_adjective'
require_relative 'lib/na_adjective'
require_relative 'lib/ichidan_verb'
require_relative 'lib/godan_verb'
require_relative 'lib/irregular_verb'

module Constants
  VERSION = '5.0'
  MENU_OPTIONS = {
    'Nouns (名詞).' => Name,
    'Group 1/る Verbs (一段活用).' => IchidanVerb,
    'Group 2/う Verbs (五段活用).' => GodanVerb,
    'Group 3/Irregular Verbs (変な活用).' => IrregularVerb,
    'な Adjectives (形容動詞).' => NaAdjective,
    'い Adjectives (形容詞).' => IAdjective,
    'Irregular) い Adjectives (変な形容詞).' => IAdjective,
    'Exit' => nil
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
    end
  end
end

def ask_conjugate_another_word?
  loop do
    print 'Do you want to conjugate another word? (y/n): '
    choice = gets.chomp.downcase
    return true if choice == 'y'
    return false if choice == 'n'

    puts "Invalid choice. Please enter 'y' for yes or 'n' for no."
  end
end

def display_menu
  puts(" 活ヨウ - KatsuYou - a CLI by Leonardo Quadros Fragozo #{Constants::VERSION}")
  puts("\n")
  puts(' What do you want to conjugate? - Type the number to select the option.')
  puts("\n")
  Constants::MENU_OPTIONS.each_with_index do |(option, _), index|
    puts("#{index + 1} - #{option}")
  end
end

def get_user_input(prompt)
  print(prompt)
  gets.chomp
end

conjugator = Conjugator.new

loop do
  display_menu
  print("Enter your choice (1-#{Constants::MENU_OPTIONS.size}): ")
  choice = gets.chomp.to_i

  if choice.between?(1, Constants::MENU_OPTIONS.size - 1)
    selected_option = Constants::MENU_OPTIONS.to_a[choice - 1]
    word_class = selected_option[1]

    print('Enter the word: ')
    word = gets.chomp

    word_object = word_class.new(word)
    conjugator.add_word(word_object)

    conjugator.conjugate_all

    break unless ask_conjugate_another_word?
  else
    puts("Invalid option. Please select a valid option (1-#{Constants::MENU_OPTIONS.size - 1}).")
  end

  puts
end

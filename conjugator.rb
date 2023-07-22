require_relative 'i_adjective'
require_relative 'na_adjective_name'
require_relative 'ichidan_verb'

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

conjugator = Conjugator.new

loop do
  puts "Katsuyo Generator - a CLI by Leonardo Quadros Fragozo v3.2.5"
  puts "What do you want to conjugate?"
  puts "1 - 変な形容詞 - (Irregular い adjectives)"
  puts "2 - 普通の形容詞 - (Regular い Adjectives)"
  puts "3 - 形容動詞 - (な Adjectives)"
  puts "4 - 名詞 - (Names)"
  puts "5 - 一段活用動詞 - (る Verbs)"
  puts "6 - Exit"

  print "Enter your choice (1-6): "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter an irregular い adjective - such as いい, かっこいい, etc: "
    adjective_i = gets.chomp

    i_adjective = IAdjective.new(adjective_i)
    conjugator.add_word(i_adjective)

    conjugator.conjugate_all

    puts "\n"
  when 2
    print "Enter a regular い adjective: "
    adjective_i = gets.chomp

    i_adjective = IAdjective.new(adjective_i)
    conjugator.add_word(i_adjective)

    conjugator.conjugate_all

    puts "\n"
  when 3
    print "Enter a な adjective in it's dictionary form - example: 元気"
    name_adjective_na = gets.chomp

    na_adjective_name = NaAdjectiveName.new(name_adjective_na)
    conjugator.add_word(na_adjective_name)

    conjugator.conjugate_all

    puts "\n"
  when 4
    print "Enter a name: "
    name_adjective_na = gets.chomp

    na_adjective_name = NaAdjectiveName.new(name_adjective_na)
    conjugator.add_word(na_adjective_name)

    conjugator.conjugate_all

    puts "\n"
  when 5
    print "Enter a 一段 (る) verb: "
    ichidan_verb = gets.chomp

    ru_verb = IchidanVerb.new(ichidan_verb)
    conjugator.add_word(ru_verb)

    conjugator.conjugate_all

    puts "\n"
  when 6
    break
  else
    puts "Invalid choice. Please enter a valid option."
    puts "\n"
  end
end

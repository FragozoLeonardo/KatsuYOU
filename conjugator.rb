require_relative 'compound_ii_adjective'
require_relative 'i_adjective'
require_relative 'na_adjective'
require_relative 'name'

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
  puts "Katsuyo Generator - a CLI by Leonardo Quadros Fragozo v1.0"
  puts "What you want to conjugate?"
  puts "1 - いい 形容詞 (いい And it's related adjectives)"
  puts "2 - (普通の形容詞 - Normal い Adjectives)"
  puts "3 - 形容動詞 - (な Adjectives)"
  puts "4 - 名詞 - (Names)"
  puts "5 - Exit"

  print "Enter your choice (1-5): "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter a compound いい adjective: "
    adjective = gets.chomp

    compound_ii_adjective = CompoundIIAdjective.new(adjective)
    conjugator.add_word(compound_ii_adjective)

    conjugator.conjugate_all  # Print conjugations immediately

    puts "\n"
  when 2
    print "Enter a regular い adjective: "
    adjective = gets.chomp

    i_adjective = IAdjective.new(adjective)
    conjugator.add_word(i_adjective)

    conjugator.conjugate_all  # Print conjugations immediately

    puts "\n"
  when 3
    print "Enter a な adjective: "
    adjective = gets.chomp

    na_adjective = NaAdjective.new(adjective)
    conjugator.add_word(na_adjective)

    conjugator.conjugate_all  # Print conjugations immediately

    puts "\n"
  when 4
    print "Enter a name: "
    name = gets.chomp

    name_word = Name.new(name)
    conjugator.add_word(name_word)

    conjugator.conjugate_all  # Print conjugations immediately

    puts "\n"
  when 5
    break
  else
    puts "Invalid choice. Please enter a valid option."
    puts "\n"
  end
end

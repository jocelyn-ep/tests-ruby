# frozen_string_literal: true

def translate(big_string)
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
  sch = 'sch'
  qu = 'qu'

  array = big_string.split

  array.map! do |str|
    if vowels.include?(str[0])
      str += 'ay'

    elsif sch.include?(str[0..2])
      str = "#{str[3..]}#{str[0..2]}ay"

    elsif qu.include?(str[0..1])
      str = "#{str[2..]}#{str[0..1]}ay"

    elsif consonants.include?(str[0]) && qu.include?(str[1..2])
      str = "#{str[3..]}#{str[0..2]}ay"

    elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
      str = "#{str[3..]}#{str[0..2]}ay"

    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str = "#{str[2..]}#{str[0..1]}ay"

    elsif consonants.include?(str[0])
      str = "#{str[1..]}#{str[0]}ay"

    end
  end

  array.join(' ')
end

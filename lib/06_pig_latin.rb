def translate(big_string)
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
  sch = "sch"
  qu = "qu"

  array = big_string.split

  array.each_with_index do |str, index| 
    if vowels.include?(str[0])
      str = str + 'ay'
      array[index]=str
    elsif sch.include?(str[0..2])
      str = str[3..-1] + str[0..2] + 'ay'
      array[index]=str
    elsif qu.include?(str[0..1])
      str = str[2..-1] + str[0..1] + 'ay'
      array[index]=str
    elsif consonants.include?(str[0]) && qu.include?(str[1..2]) 
      str = str[3..-1] + str[0..2] + 'ay'
      array[index]=str
    elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
      str = str[3..-1] + str[0..2] + 'ay'
      array[index]=str
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str = str[2..-1] + str[0..1] + 'ay'
      array[index]=str
    elsif consonants.include?(str[0])
      str = str[1..-1] + str[0] + 'ay'
      array[index]=str
    end
  end
  
  return array.join(" ")
end


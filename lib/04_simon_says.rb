# frozen_string_literal: true

def echo(string)
  string
end

def shout(string)
  string.upcase
end

# num=2 : valeur par défaut
def repeat(string, num = 2)
  new_string = "#{string} "
  new_string * (num - 1) + string
end

# retourne les lettre indexées de 0 à num exclus
def start_of_word(string, num)
  string[0, num]
end

# éclate le string en un array avec espace en séparateur
def first_word(string)
  string.split[0]
end

# par étape :
# 1. split éclate en un array
# 2. each_with_index : permet de parcourir l'array pour chaque élément (word) et chaque position(index)
# 3. .map : remplace les éléments de l'array selon (word : word.capitalize) si les conditions sont vérifiées (ici que word ne soit pas un stop_word ET (&&) que l'index soit > 0)
# 4. .join : réassemble l'array en un string avec " " comme séparateur

def titleize(string)
  stop_words = %w[and the]
  string.split.each_with_index.map do |word, index|
    stop_words.include?(word) && index.positive? ? word : word.capitalize
  end.join(' ')
end

# frozen_string_literal: true

def who_is_bigger(a, b, c)
  array = [a, b, c]
  if array.any?(&:nil?) == true
      then 'nil detected'
  else
    position = array.index(array.max)
    case position
    when 0
      'a is bigger'
    when 1
      'b is bigger'
    when 2
      'c is bigger'
    end
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete! 'LTA'
end

def array_42(array)
  array.any? { |e| e == 42 }
end

# Flatten : enlève tous les array qui pourraient être intégrés dans les array
def magic_array(array)
  array.flatten.sort.map { |e| e *= 2 }.reject { |e| (e % 3).zero? }.uniq
end

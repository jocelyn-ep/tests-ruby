def who_is_bigger(a, b, c)
  array = [a, b, c]
  if array.any?{|e| e.nil? } == true
      then return "nil detected"
  else
    position = array.index(array.max)
    case position
      when 0
        return "a is bigger"
      when 1 
        return "b is bigger"
      when 2 
        return "c is bigger"      
    end
  end
end

def reverse_upcase_noLTA(string)
  return string.reverse.upcase.delete! "LTA"
end

def array_42(array)
  return array.any? {|e| e == 42}
end

#Flatten : enlève tous les array qui pourraient être intégrés dans les array
def magic_array(array)
  return array.flatten.sort.map{|e| e*=2}.reject{|e| e % 3 == 0}.uniq
end
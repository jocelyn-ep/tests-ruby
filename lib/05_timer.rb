# frozen_string_literal: true

def time_string(num)
  Time.at(num).utc.strftime('%H:%M:%S')
end

# https://www.rubyguides.com/2015/12/ruby-time/
# C'est la méthode .strftime qui permet de formatter l'heure

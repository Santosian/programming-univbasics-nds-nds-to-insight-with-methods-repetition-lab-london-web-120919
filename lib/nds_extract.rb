$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
=begin
  pp "AAAAAAAAAAAAAAAAAAAA"
 pp result
 binding pry
=end
  pp result
 
end


def gross_for_director(d)
  total = 0
  index = 0
  
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  
  list_of_directors = []
  name_idx = 0
  while name_idx < source.length
    list_of_directors << source[name_idx][:name]
    name_idx += 1
  end
 return list_of_directors
end



def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  
  total_all_directors = 0
  idx_dir = 0
  while idx_dir < list_of_directors.length
    idx_film = 0 
    while idx_film < directors_totals
    end
    
  end
  
  
  
  
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end



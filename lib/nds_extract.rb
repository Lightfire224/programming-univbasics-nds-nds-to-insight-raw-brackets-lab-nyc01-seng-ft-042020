$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  director_number = 0
  results = {}
  while director_number < directors_database.length do
    c = 0
    grand_total = 0
    movie_list = directors_database[director_number][:movies]
    while c < movie_list.length do
        grand_total += movie_list[c][:worldwide_gross]
        c += 1
    end
    puts directors_database[director_number][:name]
    puts grand_total
    results[directors_database[director_number][:name]] = grand_total
    director_number += 1
end

puts results

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
end

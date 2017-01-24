dwarves = ["Dopey", "Grumpy", "Bashful"]

def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}, #{dwarf}"
  end
end

planeteer_calls = ["earth", "wind", "fire", "water", "heart"]

def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |planeteer|
    planeteer << "!"
    planeteer.capitalize!
  end
  puts "You'll pay for this, Captain Planet!"
  return planeteer_calls
end

assorted_words = ["two", "go", "industrious", "bop"]

def long_planeteer_calls(assorted_words)
  assorted_words.any? do |word|
    word.length > 4
  end
end

food_types = ["potato", "potato", "potato", "Latvian cheese", "potato"]

def find_the_cheese(food_types, cheese_types)
cheese_types = ["cheddar", "gouda", "camembert", "Latvian cheese"]
  if (cheese_types & food_types).empty? == false
    ## & operator and .empty? method evaluate whether
    ## the set of overlapping elements two arrays is empty
    food_types.find do |food|
      cheese_types.include?(food) && food_types.include?(food)
    end
  else
    return nil
  end
end

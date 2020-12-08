require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |row|
      name = row[:name]
      cuisine = row[:cuisine]
      print "#{name} (#{cuisine}) | Heat Level:" + " "
      heat = row[:heat_level].times do |i| 
        print "🌶 "
      end
      print "\n"
  end 
end

def get_names(spicy_foods)
  spicy_foods.map do |row|
    row[:name]
  end
end

def spiciest_foods(spicy_foods)
  spicy_foods.select do |row|
    if row[:heat_level] > 5
      row 
    end
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |x|
    if x[:cuisine] == cuisine
      x 
    end
  end 
end

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  spicy_foods.select do |row|
    if row[:heat_level] > 5
      print "#{row[:name]} (#{row[:cuisine]}) | Heat Level:" + " "
        row[:heat_level].times do |i| 
          print "🌶 "
        end
      print "\n" 
    end
  end
end 


def average_heat_level(spicy_foods)
  elements = spicy_foods.map do |x| 
    x[:heat_level] 
  end 
  elements.sum / spicy_foods.size
end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
binding.pry
"pls"
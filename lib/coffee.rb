# class Coffee
#   def ingredients
#     @ingredients ||= []
#   end

#   def add(ingredient)
#     ingredients << ingredient
#   end

#   def price
#     1.00 + ingredients.size * 0.25 # seems to be similar with .length?
#   end

#   def colour
#     ingredients.include?(:milk) ? :light : :dark
#   end

#   def temperature
#     ingredients.include?(:milk) ? 9.0 : 13.0
#   end
# end
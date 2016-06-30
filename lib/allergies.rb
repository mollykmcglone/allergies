require('pry')
class Fixnum
  define_method(:allergies) do
    entry = self
    answer_array = []
    allergens = { "cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1 }
    allergens.each do |key, value|
      if (entry./value)>(0)
        answer = allergens.key(value)
        answer_array.push(answer)
        entry = entry%value
      end
    end
    answer_array
  end
end

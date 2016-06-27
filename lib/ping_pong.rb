require('rspec')

class Fixnum
  define_method(:ping_pong) do
    numbers_array = (1..self).to_a
    numbers_array
    pingpong_array = []
    numbers_array.each() do |number|
        if number.%(15) == 0
          pingpong_array.push("pingpong")
        elsif number.%(5) == 0
          pingpong_array.push("pong")
        elsif number.%(3) == 0
          pingpong_array.push("ping")
        else
          pingpong_array.push(number)
        end
    end
    pingpong_array
  end
end

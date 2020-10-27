# visu lyginiu skaiciu masyvo suma
# frozen_string_literal: true

# class containing mathematical methods for integer arrays
class MathApdorojimas
  def initialize(array)
    @array = array
  end

  def yra_lyginis(number)
    return true if number.even?
  end

  private :yra_lyginis

  def suma_lyginiu(array)
    result = 0
    array.each do |number|
      result += number if yra_lyginis(number)
    end
    puts "Suma visu lyginiu skaiciu masyvo: #{result}"
  end

  private :suma_lyginiu

  def print_suma_lyginiu
    suma_lyginiu(@array)
  end
end

x = MathApdorojimas.new([1, 4, 2, 1, 8, 88, 3])
x.print_suma_lyginiu

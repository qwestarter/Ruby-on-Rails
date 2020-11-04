# visu lyginiu skaiciu masyvo suma
# frozen_string_literal: true

# class containing mathematical methods for integer arrays
class MathApdorojimas
  # object gets data for processing
  def initialize(array)
    @array = array
  end

  # method checks is number even or not
  def yra_lyginis(number)
    return true if number.even?
  end

  private :yra_lyginis
  # method calculates sum of all even numbers of array
  def suma_lyginiu(array)
    result = 0
    array.each do |number|
      result += number if yra_lyginis(number)
    end
    result
  end

  private :suma_lyginiu

  # print in console results
  def print_suma_lyginiu
    res = suma_lyginiu(@array)
    puts "Suma visu lyginiu skaiciu masyvo: #{res}"
    res
  end

  # print in console true if number is even, or false if number is odd
  def print_yra_lyginis(check_number)
    yra_lyginis(check_number)
  end
end

x = MathApdorojimas.new([1, 4, 2, 1, 8, 88, 3])
x.print_suma_lyginiu

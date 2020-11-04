# visu lyginiu skaiciu masyvo sumos programos patikrinimo testai
# frozen_string_literal: true

require 'test/unit'
require_relative 'uzduotis_4'

# programm tests
class Uzduotis4Tests < Test::Unit::TestCase
  # object gets data for tests
  def setup
    @object = MathApdorojimas.new([1, 4, 2, 1, 8, 88, 3])
  end

  # tests equality of prognosed result and real result
  def test_result
    assert_equal 102, @object.print_suma_lyginiu
  end

  # tests a number is even or not
  def test_is_lyginis
    assert_equal true, @object.print_yra_lyginis(2)
  end
end

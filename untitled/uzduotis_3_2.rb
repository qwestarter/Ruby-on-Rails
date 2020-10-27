# "Caesar" coding/decoding and symbol validation
# frozen_string_literal: false

# class contain algorithm of "Caesar" coding/decoding and symbol validation
class Coder
  def initialize(encrypt_or_decript, string)
    @number = encrypt_or_decript
    @simbols = string.split('')
    @result = ''
    @small = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
    @big = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  end

  def en_simbol?(simbol)
    return true if (simbol.count 'a-z,A-Z') == 1
  end

  private :en_simbol?

  def uppercase?(simbol)
    return true if (simbol.count 'A-Z') == 1

    false
  end

  private :uppercase?

  # for encription number = 3, for decription nuber = 23; casetype = true - uppercase, casetype = false - downcase
  def encriptor(simbol, casetype, number)
    return @big[(@big.index(simbol) + number) % 26] if casetype == true

    @small[(@small.index(simbol) + number) % 26]
  end

  private :encriptor

  def add_to_result(simbol)
    @result << simbol
  end

  private :add_to_result

  def print_result
    puts @result
  end

  private :print_result

  def cezar
    @simbols.each do |simbol|
      simbol = encriptor(simbol, uppercase?(simbol), @number) if en_simbol?(simbol)
      add_to_result(simbol)
    end
    print_result
  end
end
puts "If you want to encript input 3 and then press 'Enter'\nIf you wan to decript input 23 and then press 'Enter':\n"
encrypt_or_decript = gets
puts "Input text for encription(decription) and press 'Enter':"
string = gets
x = Coder.new(encrypt_or_decript.to_i, string)
x.cezar

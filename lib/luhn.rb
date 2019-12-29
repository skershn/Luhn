module Luhn
  def self.is_valid?(number)
    # starting from the right, iterate through each digit and double every 2nd one
    # determine if the doubled digits are greater than or equal to 10
    # if >= 10, subtract 9
    # add everything together
    # %10 == 0
    #.chars
    #.map(&:to_i)
    #.reverse
    #.each_slice(2)
    #.inject(0) do |sum, (a, b)|
    #  double = b.to_i * 2
    #  sum + a.to_i + (double > 9 ? double - 9 : double)
    #end.modulo(10).zero?
    num = number.to_s.scan(/\d/).reverse.map(&:to_i).map.with_index do |value, index|
      if index.odd?
        dubVal = value * 2
        if dubVal >= 10
          dubVal - 9
        else
          dubVal
        end
      else
        value
      end
    end
  sum = 0
  return false unless (num.each { |n| sum += n }.reduce(:+) % 10).zero?
  true


  end
end

Luhn.is_valid?(4194560385008504)
require './fizz_buzz_module'

class FizzBuzzSeq
  def fizzbuzz
    @fizzbuzz_seq = Array.new
    (1..100).each {|i| @fizzbuzz_seq << FizzBuzzModule.fizzbuzz_num(i)}
    @fizzbuzz_seq
  end

end

fizzy = FizzBuzzSeq.new
puts fizzy.fizzbuzz


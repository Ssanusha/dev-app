require 'sinatra'
require 'json'
require './fizz_buzz_module'

before do
  @log = []
end

get '/fizz_buzz' do
  (1..100).each do|i|
    @log<< FizzBuzzModule.fizzbuzz_num(i)
  end
  content_type :json
  JSON.generate @log
end

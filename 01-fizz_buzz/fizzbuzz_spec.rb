require 'rubygems'
require './spec/spec_helper'
require 'rest_client'
require './fizzbuzz'
require './fizz_buzz_module'
require 'json'

#
# RSPEC file to test the module that finds out
# if a number is Fizz, Buzz, FizzBuzz or none of those
# This test will look for specific use cases

describe "FizzBuzz sequence" do

  before(:all) do
    @seq = FizzBuzzSeq.new
  end
  it "gives 1 for 1" do
    FizzBuzzModule.fizzbuzz_num(1).should == 1
  end
  it "gives 2 for 2" do
    FizzBuzzModule.fizzbuzz_num(2).should == 2
  end
  it "gives Fizz for 3" do
    FizzBuzzModule.fizzbuzz_num(3).should == "Fizz"
  end
  it "gives Buzz for 5" do
    FizzBuzzModule.fizzbuzz_num(5).should == "Buzz"
  end
  it "gives FizzBuzz for 15" do
    FizzBuzzModule.fizzbuzz_num(15).should == "FizzBuzz"
  end

  it "should have first 15 items in fizzbuzz sequence" do
    @seq.fizzbuzz[0..14].should == [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz",11,"Fizz",13,14,"FizzBuzz"]
  end

  # API Test
  describe 'API' do
    it "API Running?" do
      response = RestClient.get "http://localhost:3005/fizz_buzz"
      JSON.parse(response.body).should  be_an_instance_of(Array)
    end
  end
end

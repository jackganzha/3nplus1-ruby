require File.expand_path(File.dirname(__FILE__) + '/../lib/collatz')
require 'spec_helper'

describe "3n + 1 problem solver" do

  before :each do
    @collatz = Collatz.new
  end

  describe "should calculate function return for odd values" do

    it "return 34 for 11" do
      @collatz.calculate_for(11).should == 34
    end

    it "return 10 for 3" do
      @collatz.calculate_for(3).should == 10
    end

  end

  describe "should calculate function return for even values" do

    it "return 5 for 10" do
      @collatz.calculate_for(10).should == 5
    end

    it "return 2 for 4" do
      @collatz.calculate_for(4).should == 2
    end
  end

  describe "should calculate the cycle length for numbers" do

    it "the cycle length for 22 is 16" do
      @collatz.cycle_length_for(22).should == 16
    end

    it "the cycle length for 4 is 3" do
      @collatz.cycle_length_for(4).should == 3
    end

  end

  describe "should find the max cycle length in range" do

    it "for range 1..100 the max cycle length is 119" do
      @collatz.max_cycle_length_for_range(1..100).should == 119
    end

    it "for range 1..10 the max cycle length is 20" do
      @collatz.max_cycle_length_for_range(1..10).should == 20
    end

    it "for range 900..1000 the max cycle length is 174" do
      @collatz.max_cycle_length_for_range(900..1000).should == 174
    end

    it "for range 1..10_000_000" do
      @collatz.max_cycle_length_for_range(1..10_000_000).should == 616
    end

  end

end


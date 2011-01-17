require File.expand_path(File.dirname(__FILE__) + '/../lib/collatz')
require 'spec_helper'

describe Collatz do

  describe "base function for odd values" do

    it "return 34 for 11" do
      subject.calculate_for(11).should == 34
    end

    it "return 10 for 3" do
      subject.calculate_for(3).should == 10
    end

  end

  describe "base function for even values" do

    it "return 5 for 10" do
      subject.calculate_for(10).should == 5
    end

    it "return 2 for 4" do
      subject.calculate_for(4).should == 2
    end
  end

  describe "cycle length" do

    it "for 22 is 16" do
      subject.cycle_length_for(22).should == 16
    end

    it "for 4 is 3" do
      subject.cycle_length_for(4).should == 3
    end

  end

  describe "should find the max cycle length" do

    it "for range 1..100 = 119" do
      subject.max_cycle_length_for_range(1..100).should == 119
    end

    it "for range 1..10 = 20" do
      subject.max_cycle_length_for_range(1..10).should == 20
    end

    it "for range 900..1000 = 174" do
      subject.max_cycle_length_for_range(900..1000).should == 174
    end

  end

end


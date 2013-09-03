require_relative '../../test_helper'
 
describe MathProbability::Probability do

  subject { MathProbability::Probability }
 
  it "should sigma(1, 4, '2*x + 1') equal 24" do
    subject.sigma(1, 4, "2*x + 1").must_equal(24)
  end

  it "should not allow a bad variable in sigma()" do
    proc {subject.sigma(1, 4, "2*q + 1")}.must_raise(ArgumentError)
  end

  it "should not allow bash in sigma()" do
    proc {subject.sigma(1, 4, "ls")}.must_raise(ArgumentError)
  end

  it "should let permutations_no_repeat(10, 4) equal 5040" do
    subject.permutations_no_repeat(10,4).must_equal(5040)
  end

  it "should let permutations_no_repeat(10, 4) equal 10000" do
    subject.permutations_with_repeat(10,4).must_equal(10000)
  end

  it "should let combinations(10,4) equal 210" do
    subject.combinations(10,4).must_equal(210)
  end

  it "should return all forms of Probability" do
    subject.probability(1,2).must_equal([0.5, "50.0%", "1/2"])
  end
 
end

describe Integer do
  it "let 4! equal 24" do
    4.factoral.must_equal(24)
  end
 
end
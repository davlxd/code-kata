require './karate_chop'


describe KarateChop do
  it "return middle one of three-elements-array" do
    karate_chop = KarateChop.new
    karate_chop.chop([1, 2, 3]).should eq(1)
  end
end

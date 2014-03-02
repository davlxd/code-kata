require './karate_chop'


describe KarateChop do
  it "should return not found when search from empty array" do
    karate_chop = KarateChop.new
    karate_chop.chop([], 5).should eq(-1)
  end
end

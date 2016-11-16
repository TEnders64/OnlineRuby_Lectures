require_relative 'appleTree'
RSpec.describe AppleTree do
  before do
    @tree = AppleTree.new
  end
  it "should have a height and age property" do
    expect(@tree.height).to eq(0)
    expect(@tree.age).to eq(0)
  end
  it "should have a count of how many apples are on it" do
    expect(@tree).to have_attributes(:apples => 0)
  end
  it "should have a method called year_gone_by which ages the tree by 1 year, affecting its height" do
    @tree.year_gone_by
    expect(@tree.age).to eq(1)
    expect(@tree.height).to eq(20)
  end
  it "should not be able to grow apples for the first three years of its life" do
    expect(@tree.apples).to eq(0)
    3.times { @tree.year_gone_by }
    expect(@tree.apples).to eq(20)
  end
  it "should have a method called pick_apples that takes all apples off the tree" do
    3.times { @tree.year_gone_by }
    expect(@tree.pick_apples).to eq(0)
  end
  it "should decay and not grow apples after 10 years" do
    11.times { @tree.year_gone_by }
    expect(@tree.apples).to eq(0)
    expect(@tree.height).to eq(200)
  end
end

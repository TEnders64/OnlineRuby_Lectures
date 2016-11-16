RSpec.describe Hash do
  before do
    @h = Hash.new
  end
  it 'tests that the key of name exists' do
    @a[:age] = 100
    expect(@a.age).to eq(100)
  end
  it 'raises an error if trying to call a non-existent method' do
    expect{@h.fun_factory}.to raise_error(NoMethodError)
  end
  it 'raises an error when trying to fetch non-existent key' do
    expect{@h.fetch("no_way")}.to raise_error(KeyError)
  end
end

#TDD with RUBY
####Test-Driven Development
- <b>Importance</b>: If we write tests really well before we begin to code, we increase the odds of having a bulletproof application.
- Writing good tests takes you to the next level as a Ruby developer
- Tools:
  - RSpec testing library
  - Capybara

####RSpec Methods
- `describe`
- `it`
- `expect()`
- `to()`
- `not_to()`
- `eq()`
- `before`

```ruby
RSpec.describe Hash do
  before do
    @h = Hash.new
  end
  it 'tests that the key of name exists' do
    @h[:name] = "Todd"
    expect(@h.has_key? :name).to eq(true)
  end
end
```
####Raising Errors
- We sometimes want to test expected errors as well
- We have to format our tests a bit differently as we don't want to just focus on the final outcome, we want to observe what's happening every step along the way.

Example:
```ruby
RSpec.describe Hash do
  before do
    @h = Hash.new
  end
  it 'tests that the key of name exists' do
    @h[:name] = "Todd"
    expect(@h.has_key? :name).to eq(true)
  end
  it 'raises an error when trying to fetch non-existent key' do
    expect{@h.fetch("no_way")}.to raise_error()
  end
end
```
Cool, but let's be more specific like RSpec is suggesting...  When `.fetch()` is ran, it will raise a `KeyError` if the key isn't found!
```ruby
RSpec.describe Hash do
  before do
    @h = Hash.new
  end
  it 'tests that the key of name exists' do
    @h[:name] = "Todd"
    expect(@h.has_key? :name).to eq(true)
  end
  it 'raises a KeyError when trying to fetch non-existent key' do
    expect{@h.fetch("no_way")}.to raise_error(KeyError)
  end
end
```
####Group Activity
Take an existing Ruby class (head to ruby-doc.org) and write 3 separate tests that exemplify the way that class works, similar to how we did the Hash example above.
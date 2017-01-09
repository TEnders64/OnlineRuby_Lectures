require 'rails_helper'

RSpec.describe User, type: :model do
  it "requires name not to be blank" do
    user1 = User.new(name:"", email:"todd@todd.com", password:"password")
    user2 = User.new(name:"Todd", email:"t@t.com", password:"password")
    expect(user1.valid?).to be(false)
    expect(user2.valid?).to be(true)
  end
  it "requires name to be at least 2 characters" do
    user1 = User.new(name:"A", email:"a@a.com", password:"password")
    user2 = User.new(name:"Ab", email:"ab@ab.com", password:"password")
    expect(user1.valid?).to be(false)
    expect(user2.valid?).to be(true)
  end
  it "requires email to be valid" do
    user1 = User.new(name:"Abba", email:"ab@ba.com", password:"password")
    user2 = User.new(name:"Joy", email:"a.com", password:"password")
    expect(user1.valid?).to be(true)
    expect(user2.valid?).to be(false)
  end
  it "requires email to be unique" do
    user1 = User.create(name:"Abba", email:"ab@ba.com", password:"password")
    user2 = User.new(name:"Joe", email:"ab@ba.com", password:"password")
    expect(user2.valid?).to be(false)
  end
end

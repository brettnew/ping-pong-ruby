require('rspec')
require('ping_pong.rb')

describe('Fixnum#ping_pong') do
  it ("returns the word pingpong when the input is evenly divisible by 15") do
    expect(15.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"]))
  end
  it("returns the word pong when the number in the array is evenly divisible by 5") do
    expect(5.ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end
  it("returns the word ping when the number in the array is evenly divisible by 3") do
    expect(3.ping_pong()).to(eq([1, 2, "ping"]))
  end
  it ("returns an array from 1 to the number input") do
    expect(2.ping_pong()).to(eq([1, 2]))
  end
end

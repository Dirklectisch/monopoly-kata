require 'teststrap'
require 'monopoly/dice'

context "One hunderd dice rolls" do
  setup { Dice.new }
  setup do
    rolls = []
    100.times do
      rolls << topic.roll
    end
    rolls
  end
  asserts("does not result in the same values") { topic.uniq.size > 1 }
  asserts("results in values greater than one") do
    topic.reject! { |i| i < 1 }
    topic.size == 100
  end
  asserts("doesn't results in any values greater than thirteen") do
    topic.reject! { |i| i > 13 }
    topic.size == 100
  end

end

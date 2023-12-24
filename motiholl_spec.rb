require 'rspec'
require_relative 'montiholl.rb'
RSpec.describe Numbers do
  describe '#initialize' do
    it 'should properly initialize a Numbers object with given values' do
      numbers = Numbers.new(1, 2, 3, 4)
      expect(numbers.num1).to eq(1)
      expect(numbers.num2).to eq(2)
      expect(numbers.num3).to eq(3)
      expect(numbers.num4).to eq(4)
    end
    describe '#display_numbers' do
      it 'should print the numbers in the correct format' do
        numbers = Numbers.new(1, 2, 3, 4)
        expect { numbers.display_numbers }.to output("1, 2, 3, 4\n").to_stdout
      end
    end
  end
end
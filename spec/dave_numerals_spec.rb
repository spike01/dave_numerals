require 'dave_numerals.rb'

class ModuleHolder; include DaveNumerals; end

describe DaveNumerals do
  let(:daves) { ModuleHolder.new }

  [
    [1, "No"],
    [2, "No no"],
    [3, "No no no"],
    [4, "No Dave"],
    [5, "Dave"],
    [6, "Dave no"],
    [9, "No don't sing!"],
    [10, "Don't sing!"]
  ].each do |number, dave_number|
    it "returns #{dave_number} for #{number}" do
      expect(daves.daveify(number)).to eq(dave_number)
    end
  end
end

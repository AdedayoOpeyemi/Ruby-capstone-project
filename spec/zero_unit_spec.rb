require_relative '../lib/zero_unit.rb'

# rubocop: disable Style/MixinUsage
include ZeroUnit
# rubocop: enable Style/MixinUsage

describe ZeroUnit do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#zero_unit_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        expect(zero_unit_check(cont[149], 149)).to eq(nil)
      end
    end

    context 'When there is a Zero value with a unit' do
      it 'It returns an error message' do
        expect(zero_unit_check(cont[129], 129)).to eq("\e[0;35;49mUnit assigned to Zero value on line 130\e[0m")
      end
    end
  end
end

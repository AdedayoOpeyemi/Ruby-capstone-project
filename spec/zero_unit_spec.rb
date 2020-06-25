require_relative '../lib/zero_unit.rb'

# rubocop: disable Style/MixinUsage
include ZeroUnit
# rubocop: enable Style/MixinUsage

describe ZeroUnit do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#zero_unit_check' do
  
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        zero_unit_check(file_details[149], 149, error_array)
        expect(error_array).to be_a(Array)
      end
    end

    context 'When there is a Zero value with a unit' do
      it 'It returns an array' do
        zero_unit_check(file_details[129], 129, error_array)
        expect(error_array).to eq(["\e[0;35;49mUnit assigned to Zero valued variable on line 130\e[0m"])
      end
    end
  end
end
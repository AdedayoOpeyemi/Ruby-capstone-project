require_relative '../lib/trailing_space.rb'

# rubocop: disable Style/MixinUsage
include Trailing
# rubocop: enable Style/MixinUsage

describe Trailing do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#trailing_space_check' do
  
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        trailing_space_check(file_details[149], 149, error_array)
        expect(error_array).to be_a(Array)
      end
    end

    context 'When the there is a trailing space at the end of a line' do
      it 'It returns an array' do
        trailing_space_check(file_details[143], 143, error_array)
        expect(error_array).to eq(["\e[0;34;49mTrailing white space found on line 144\e[0m"])
      end
    end

    context 'When the there is no trailing space at the end of a line' do
      it 'It returns an array' do
        trailing_space_check(file_details[144], 144, error_array)
        expect(error_array).to eq([])
      end
    end
  end
end
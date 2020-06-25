require_relative '../lib/missing_semicolon.rb'

# rubocop: disable Style/MixinUsage
include SemiColon
# rubocop: enable Style/MixinUsage

describe SemiColon do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#semi_colon_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        missing_semicolon_check(file_details[34], 34, error_array)
        expect(error_array).to be_a(Array)
      end
    end

    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        missing_semicolon_check(file_details[149], 149, error_array)
        expect(error_array).to eq(["\e[0;36;49mMissing semicolon at the end of line 150\e[0m"])
      end
    end
  end
end
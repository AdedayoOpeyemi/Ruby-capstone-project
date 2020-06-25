require_relative '../lib/empty_comment.rb'

# rubocop: disable Style/MixinUsage
include EmptyComment
# rubocop: enable Style/MixinUsage

describe EmptyComment do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#empty_comment_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns an array' do
        empty_comment_check(file_details[34], 34, error_array)
        expect(error_array).to be_a(Array)
      end
    end

    context 'When there is open and close comment tag without a space in between them at the begining of a line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(file_details[128], 128, error_array)
        expect(error_array).to eq(["\e[0;31;49mEmpty comment detected on line 129\e[0m"])
      end
    end

    context 'When there is open and close comment tag without a space in between them at the end of a line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(file_details[129], 129, error_array)
        expect(error_array).to eq(["\e[0;31;49mEmpty comment detected on line 130\e[0m"])
      end
    end

    context 'When there is open and close comment tag without a space in between in the middle of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(file_details[133], 133, error_array)
        expect(error_array).to eq(["\e[0;31;49mEmpty comment detected on line 134\e[0m"])
      end
    end

    context 'When there is open and close comment tag with a space or more at the begining of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(file_details[140], 140, error_array)
        expect(error_array).to eq(["\e[0;31;49mEmpty comment detected on line 141\e[0m"])
      end
    end

    context 'When there is open and close comment tag with a space or more in between in the middle of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(file_details[133], 133, error_array)
        expect(error_array).to eq(["\e[0;31;49mEmpty comment detected on line 134\e[0m"])
      end
    end
  end
end

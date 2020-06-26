require_relative '../lib/empty_comment.rb'

# rubocop: disable Style/MixinUsage
include EmptyComment
# rubocop: enable Style/MixinUsage

describe EmptyComment do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:cont) { File.readlines('./style.css') }

  describe '#empty_comment_check' do
    context 'When the parameters passed in are the line, index of line, empty array' do
      it 'It returns nil' do
        expect(empty_comment_check(cont[34], 34)).to eql(nil)
      end
    end

    context 'When there is open and close comment tag without a space in between them at the begining of a line' do
      it 'It pushes the error message into the error array' do
        expect(empty_comment_check(cont[128], 128)).to eq("\e[0;31;49mEmpty comment detected on line 129\e[0m")
      end
    end

    context 'When there is open and close comment tag without a space in between them at the end of a line' do
      it 'It pushes the error message into the error array' do
        expect(empty_comment_check(cont[129], 129)).to eq("\e[0;31;49mEmpty comment detected on line 130\e[0m")
      end
    end

    context 'When there is open and close comment tag without a space in between in the middle of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(cont[133], 133)
        expect(empty_comment_check(cont[133], 133)).to eq("\e[0;31;49mEmpty comment detected on line 134\e[0m")
      end
    end

    context 'When there is open and close comment tag with a space or more at the begining of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(cont[140], 140)
        expect(empty_comment_check(cont[140], 140)).to eq("\e[0;31;49mEmpty comment detected on line 141\e[0m")
      end
    end

    context 'When there is open and close comment tag with a space or more in between in the middle of the line' do
      it 'It pushes the error message into the error array' do
        empty_comment_check(cont[133], 133)
        expect(empty_comment_check(cont[133], 133)).to eq("\e[0;31;49mEmpty comment detected on line 134\e[0m")
      end
    end
  end
end

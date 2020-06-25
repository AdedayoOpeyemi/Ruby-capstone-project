context 'When the parameters passed in are the line, index of line, empty array' do
    it 'It returns an array' do
      missing_semicolon_check(file_details[149], 149, error_array)
      expect(error_array).to eq(["\e[0;36;49mMissing semicolon at the end of line 150\e[0m"])
    end
  end
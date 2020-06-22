require 'colorize'

module AfterColon
  private

  def after_colon(line_content, line_index, error_messages)
    if line_content.match(/\S:\S/) && !line_content.match(/\:\:/)
      error_messages << "No space after colon on #{line_index + 1}".colorize(:cyan)
    end
  end

  public

  def after_colon_check(line_content, line_index, error_messages)
    after_colon(line_content, line_index, error_messages)
  end
end

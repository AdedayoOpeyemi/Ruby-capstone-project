require 'colorize'

module EmptyComment
  private

  def empty_comment(line_content, line_index, error_messages)
    matching_condition = (/\/\*\s*\*\//) 
    return unless matching_condition =~ line_content

    error_messages << "Empty comment detected on line #{line_index + 1}".colorize(:red)
  end

  public

  def empty_comment_check(line_content, line_index, error_messages)
    empty_comment(line_content, line_index, error_messages)
  end
end

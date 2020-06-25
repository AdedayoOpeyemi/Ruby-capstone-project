require 'colorize'

module MultipleSpace
  private

  def multiple_space(line_content, line_index, error_messages)
    matching_condition = /\S+\s{2,}\S/
    return unless matching_condition =~ line_content

    error_messages << "Multiple spaces found on line #{line_index + 1}".colorize(:yellow)
  end

  public

  def multiple_space_check(line_content, line_index, error_messages)
    multiple_space(line_content, line_index, error_messages)
  end
end

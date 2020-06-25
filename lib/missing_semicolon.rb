require 'colorize'

module SemiColon
  private

  def missing_semicolon(line_content, line_index, error_messages)
    return unless line_content.match(/\:+/) && !line_content.match?(/;+$/) && !line_content.match?(/[\,(\}+$)\{]/)

    error_messages << "Missing semicolon at the end of line #{line_index + 1}".colorize(:cyan)
  end

  public

  def missing_semicolon_check(line_content, line_index, error_messages)
    missing_semicolon(line_content, line_index, error_messages)
  end
end

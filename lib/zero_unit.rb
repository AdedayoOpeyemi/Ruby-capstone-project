require 'colorize'

module ZeroUnit
  private

  def zero_unit(line_content, line_index, error_messages)
    matching_condition = /[\:\s]+0{1}+\w/
    return unless matching_condition =~ line_content

    error_messages << "Unit assigned to Zero valued variable on #{line_index + 1}".colorize(:magenta)
  end

  public

  def zero_unit_check(line_content, line_index, error_messages)
    zero_unit(line_content, line_index, error_messages)
  end
end

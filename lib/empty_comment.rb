require 'colorize'

module EmptyComment
  def empty_comment_check(line, index)
    matching_condition = %r{\/\*\s*\*\/}
    return unless matching_condition =~ line

    "Empty comment detected on line #{index + 1}".colorize(:red)
  end
end

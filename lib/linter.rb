require_relative '../lib/trailing_space.rb'
require_relative '../lib/multiple_space.rb'
require_relative '../lib/zero_unit.rb'
require_relative '../lib/empty_comment.rb'
require_relative '../lib/after_colon.rb'
require_relative '../lib/missing_semicolon.rb'

require 'colorize'

class LinterApp
  include Trailing
  include MultipleSpace
  include ZeroUnit
  include EmptyComment
  include AfterColon
  include SemiColon

  def lint_action(method, error_array)
    checkcheck = method
    error_array << checkcheck unless checkcheck.nil?
  end
end

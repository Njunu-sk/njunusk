# frozen_string_literal: true

require "njunusk/version"
require "njunusk/center"
require "njunusk/output"

module Njunusk
  class Error < StandardError; end

  Output.new.log_to_console
end

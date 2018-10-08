require 'lynx/pipe/basic'
require 'lynx/system_out'

module Lynx
  module Pipe
    class Append < Basic
      def initialize(file)
        @file = file
      end

      def perform(command)
        SystemOut.system_out_with_err("#{command} >> #{@file}")
      end

      def clear
        SystemOut.system_out_with_err("rm -rf #{@file}")
        self
      end
    end
  end
end

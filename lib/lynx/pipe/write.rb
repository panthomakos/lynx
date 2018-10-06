require 'lynx/pipe/basic'

module Lynx
  module Pipe
    class Write < Basic
      def initialize(file)
        @file = file
      end

      def perform(command)
        system("#{command} > #{@file}") || exit(1)
      end

      def clear
        system("rm -rf #{@file}") || exit(1)

        self
      end
    end
  end
end

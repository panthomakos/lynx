require 'lynx/pipe/basic'
require 'open3'

module Lynx
  module Pipe
    class Write < Basic
      def initialize(file)
        @file = file
      end

      def perform(command)
        stdout, stderr, status = Open3.capture3("#{command} > #{@file}")
        unless status.success?
          abort("\n [ERROR] #{stderr} \n [ERROR] Failed to perform write: #{command} > #{@file}")
        end
      end

      def clear
        stdout, stderr, status = Open3.capture3("rm -rf #{@file}")
        unless status.success?
          abort("\n [ERROR] #{stderr} \n [ERROR] Failed to remove file: #{@file}")
        end
        self
      end
    end
  end
end

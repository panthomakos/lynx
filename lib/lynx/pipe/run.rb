require 'lynx/pipe/basic'
require 'open3'

module Lynx
  module Pipe
    class Run < Basic
      def perform(command)
        stdout, stderr, status = Open3.capture3(command.to_s)
        unless status.success?
          abort("\n [ERROR] #{stderr} \n [ERROR] Failed to run command: #{command.to_s}")
        end
      end
    end
  end
end

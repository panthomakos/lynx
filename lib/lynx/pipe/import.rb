require 'lynx/pipe/basic'
require 'open3'

module Lynx
  module Pipe
    class Import < Basic
      def initialize(file)
        @file = file
      end

      def perform(command)
        stdout, stderr, status = Open3.capture3("cat #{@file} | #{command}")
        unless status.success?
          abort("\n [ERROR] #{stderr} \n [ERROR] Failed to import: cat #{@file} |#{command.to_s}")
        end
      end
    end
  end
end

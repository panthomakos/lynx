require 'open3'
require 'lynx/error'

module Lynx
  module SystemOut
    def self.system_out_with_err(command)
      stdout, stderr, status = Open3.capture3(command)
      unless status.success?
        raise(Lynx::Error, "\n [ERROR] #{stderr} \n [ERROR] Failed to perform: #{command}")
      end
      stdout
    end
  end
end

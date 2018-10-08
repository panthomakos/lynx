require 'open3'

module Lynx
  module SystemOut
    def self.system_out_with_err(command)
      stdout, stderr, status = Open3.capture3(command)
      unless status.success?
        abort("\n [ERROR] #{stderr} \n [ERROR] Failed to perform: #{command}")
      end
    end
  end
end
require 'minitest/autorun'
require 'lynx'

describe Lynx do
  it 'attempts to config from Rails' do
    assert_raises(RuntimeError, 'unable to find configuration file') do
      Lynx.rails
    end
  end
end

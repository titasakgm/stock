require 'test_helper'

class SetcloseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Setclose.new.valid?
  end
end

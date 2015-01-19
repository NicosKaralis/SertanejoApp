require 'test_helper'

class CantadaTest < ActiveSupport::TestCase
  test "cantada have content" do
    assert cantadas(:valid).valid?
    assert_not cantadas(:missing_text).valid?, "cantadas text should not be nil"
    assert_not cantadas(:blank_text).valid?,   "cantadas text should not be empty"
  end
end

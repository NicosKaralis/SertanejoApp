require 'test_helper'

class CantadaTemplateTest < ActiveSupport::TestCase
  
  test "have a text" do
    assert cantada_templates(:valid).valid?

    assert_not cantada_templates(:blank_text).valid?, "text should not be nil"
    assert_not cantada_templates(:empty_text).valid?, "text should not be empty"
  end
  
end

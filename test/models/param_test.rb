require 'test_helper'

class ParamTest < ActiveSupport::TestCase
  
  test "param have a key" do
    assert params(:valid).valid?
    assert_not params(:missing_key).valid?, "Param key should not be nil"
    assert_not params(:blank_key).valid?,   "Param key should not be empty"
  end
  
  test "param biografia exists" do
    assert_not Param.biografia.nil?
    assert     Param.biografia.empty?
    
    bio = "Nova bio"
    Param.biografia = bio
    
    assert_equal Param.biografia, bio
  end
  
  test "duplicated params" do
    p1 = Param.new_contato 'facebook', 'teste'
    p2 = Param.new_contato 'facebook', 'teste'
    
    assert     p1.save
    assert_not p2.save
    assert_not p2.valid?
  end
  
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "usuario have a facebook id" do
    assert users(:valid_male).valid?
    assert users(:valid_female).valid?
    assert_not users(:missing_fb_id).valid?, "Facebook id should not be nil"
    
    duplicated_user = users(:valid_male)
    duplicated_user.fb_id = users(:valid_female).fb_id
    assert_not duplicated_user.valid?, "Facebook id should not be duplicable"
  end
  
  test "usuario have a photo url" do
    assert users(:valid_male).valid?
    assert_not users(:missing_foto_url).valid?, "foto url should not be nil"
    assert_not users(:blank_foto_url).valid?,   "foto url should not be empty"
        
    User.all.each do |usuario|
      if usuario.valid?
        assert_not_empty usuario.foto_url,                     "foto_url should not be empty"
        assert_match /\Ahttp[s]{0,1}:\/\//i, usuario.foto_url, "foto_url should be an URL"        
      end
    end
  end
  
  test 'gender' do
    assert users(:valid_male).valid?
    assert users(:valid_female).valid?
    
    assert_not users(:invalid_gender).valid?, "gender should be m or f"
    assert_not users(:blank_gender).valid?, "gender should be m or f"
  end
  
end

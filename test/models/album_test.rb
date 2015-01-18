require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  
  # called before every single test
  def setup
    one = albums(:one)
    @valid_params = {
      nome: one.nome,
      release: one.release,
      capa: one.capa,
      itunes_store: one.itunes_store,
      play_store: one.play_store
    }
  end
  
  # called after every single test
  def teardown
    @valid_params = nil
  end
  
  test "album have a name" do
    Album.all.each do |album|
      assert_not_nil album.nome,   "Album name should not be nil"
      assert_not_empty album.nome, "Album name should not be empty"
    end
    
    assert_no_difference('Album.count') do
      Album.create(@valid_params.merge({nome: nil}))
      Album.create(@valid_params.merge({nome: ""}))
    end
  end
  
  test "album have a release date" do
    Album.all.each do |album|
      assert_not_nil album.release, "Album release date should not be nil"
    end
    
    assert_no_difference('Album.count') do
      Album.create(@valid_params.merge({release: nil}))
    end
  end

  test "album have a cover image" do
    Album.all.each do |album|
      assert_not_nil album.capa,   "Album cover should not be nil"
      assert_not_empty album.capa, "Album cover should not be empty"
    end
    
    assert_no_difference('Album.count') do
      Album.create(@valid_params.merge({capa: nil}))
      Album.create(@valid_params.merge({capa: ""}))
    end
  end

  test "album have a itunes store link" do
    Album.all.each do |album|
      unless album.itunes_store.nil?
        assert_not_empty album.itunes_store,                                "If album itunes link is present, it should not be empty"
        assert_match /\Ahttps:\/\/itunes.apple.com\//i, album.itunes_store, "If album itunes link is present, it should be an URL"
      end
    end
  end

  test "album have a play store link" do
    Album.all.each do |album|
      unless album.play_store.nil?
        assert_not_empty album.play_store,               "If album play store link is present, it should not be empty"
        assert_match /\Amarket:\/\//i, album.play_store, "If album play store link is present, it should be an URL"
      end
    end
  end
  
end

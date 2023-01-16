require "test_helper"

class SingerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @singer = Singer.new(name: "Sports")
  end

  test "singer should be valid" do
    assert @singer.valid?
  end

  test "name should be present" do
    @singer.name = " "
    assert_not @singer.valid?
  end

  test "name should be unique" do
    @singer.save
    @singer2 = singer.new(name: "Sports")
    assert_not @singer2.valid?
  end

  test "name should not be too long" do
    @singer.name = "a" * 26
    assert_not @singer.valid?
  end

  test "name should not be too short" do
    @singer.name = "aa"
    assert_not @singer.valid?
  end
end

# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  test "Should have a title value" do
    photo = Photo.new(image_url:"algo.jpg")
    assert_not photo.save
  end

  test "Should have  an image_url value" do
    photo = Photo.new(title:"algo.jpg")
    assert_not photo.save
  end

  test "Should not have non valid image urls" do
    photo = Photo.new(title:"algo", image_url:"algo")
    assert_not photo.save
  end

  test "Should save valid image urls" do
    photo = Photo.new(image_url:"algo.jpg", title:"Algo")
    assert photo.save
  end



  # test "the truth" do
  #   assert true
  # end
end

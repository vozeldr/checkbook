require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "ensure user cannot be created when no firstname is supplied" do
     user = User.new
     assert !user.save
     assert !user.errors[:firstname].empty?
   end
  test "ensure user cannot be created when no lastname is supplied" do
     user = User.new
     assert !user.save
     assert !user.errors[:lastname].empty?
   end
  test "ensure user cannot be created when no nickname is supplied" do
     user = User.new
     assert !user.save
     assert !user.errors[:nickname].empty?
   end
end

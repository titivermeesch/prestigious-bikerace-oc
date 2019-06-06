require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  test "should not save slogan with missing firstname" do
    slogan = Slogan.new(lastname: 'vermeesch', email: 'titivermeesch@gmail.com', slogan: 'Tezst')
    assert_not slogan.save, "Tried to save with missing firstname"
  end

  test "should not save slogan with missing lastname" do
    slogan = Slogan.new(firstname: 'vermeesch', email: 'titivermeesch@gmail.com', slogan: 'Tezst')
    assert_not slogan.save, "Tried to save with missing lastname"
  end

  test "should not save slogan with missing slogan" do
    slogan = Slogan.new(firstname: 'vermeesch', lastname: 'vermeesch', email: 'titivermeesch@gmail.com')
    assert_not slogan.save, "Tried to save with missing lastname"
  end

  test "should not save if slogan is longer than 50 characters" do
    slogan = Slogan.new(firstname: 'tristan', lastname: 'vermeesch', email: 'titivermeesch@gmail.com', slogan: 'Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadazdddddzadazdzdzaddzdddddddddddddddddddddddddddddddddddddddddd')
    assert_not slogan.save, "Tried to save with a slogan over 50 characters"
  end

  test "should not save slogan with missing email" do
    slogan = Slogan.new(firstname: 'tristan', lastname: 'vermeesch', slogan: 'Tezst')
    assert_not slogan.save, "Tried to save with missing firstname"
  end

  test "should not save if email exists" do
    slogan = Slogan.new(firstname: 'tristan', lastname: 'vermeesch', email: 'titivermeesch@gmail.com', slogan: 'Test')
    assert_not_nil slogan.errors[:email], "Tried to save with an already used mail"
  end

  test "should not save if email is not valid" do
    slogan = Slogan.new(firstname: 'tristan', lastname: 'vermeesch', email: 'titivermeeschgmail.com', slogan: 'Test')
    assert_not_nil slogan.errors[:email], "Tried to save with an email that is not valid"
  end
end

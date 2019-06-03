require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  test "should not save slogan with missing data" do
    slogan = Slogan.new
    assert_not slogan.save, "Saved a slogan with missing data"
  end
end

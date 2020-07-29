require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/vendor"

class VendorTest < Minitest::Test

  def test_it_exists
    assert_instance_of Vendor, vendor
  end

  def test_it_has_attributes
  end

end

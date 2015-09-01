require 'test_helper'

class CelciusMetricsHelperTest < ActiveSupport::TestCase
  test 'should return average for savard degrees' do
    assert_equal 27, CelciusMetricsHelper.savard_degrees([4, 0, 4, 100])
  end
end

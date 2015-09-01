require 'test_helper'

class CelciusMetricsHelperTest < ActiveSupport::TestCase
  test 'should return average for savard degrees' do
    assert_equal 27, CelciusMetricsHelper.savard_degrees([4, 0, 4, 100])
  end

  test 'should return correct sum for weighted degrees indicator' do
    assert_equal 301, CelciusMetricsHelper.weighted_degrees_indicator([0,-500,10000,300,1])
  end
end

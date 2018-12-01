require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get galactic_clusters" do
    get model_galactic_clusters_url
    assert_response :success
  end

end

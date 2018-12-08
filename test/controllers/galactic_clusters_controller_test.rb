require 'test_helper'

class GalacticClustersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galactic_cluster = galactic_clusters(:one)
  end

  test "should get index" do
    get galactic_clusters_url
    assert_response :success
  end

  test "should get new" do
    get new_galactic_cluster_url
    assert_response :success
  end

  test "should create galactic_cluster" do
    assert_difference('GalacticCluster.count') do
      post galactic_clusters_url, params: { galactic_cluster: {  } }
    end

    assert_redirected_to galactic_cluster_url(GalacticCluster.last)
  end

  test "should show galactic_cluster" do
    get galactic_cluster_url(@galactic_cluster)
    assert_response :success
  end

  test "should get edit" do
    get edit_galactic_cluster_url(@galactic_cluster)
    assert_response :success
  end

  test "should update galactic_cluster" do
    patch galactic_cluster_url(@galactic_cluster), params: { galactic_cluster: {  } }
    assert_redirected_to galactic_cluster_url(@galactic_cluster)
  end

  test "should destroy galactic_cluster" do
    assert_difference('GalacticCluster.count', -1) do
      delete galactic_cluster_url(@galactic_cluster)
    end

    assert_redirected_to galactic_clusters_url
  end
end

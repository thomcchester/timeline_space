require 'test_helper'

class GalaticClustersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galatic_cluster = galatic_clusters(:one)
  end

  test "should get index" do
    get galatic_clusters_url
    assert_response :success
  end

  test "should get new" do
    get new_galatic_cluster_url
    assert_response :success
  end

  test "should create galatic_cluster" do
    assert_difference('GalaticCluster.count') do
      post galatic_clusters_url, params: { galatic_cluster: {  } }
    end

    assert_redirected_to galatic_cluster_url(GalaticCluster.last)
  end

  test "should show galatic_cluster" do
    get galatic_cluster_url(@galatic_cluster)
    assert_response :success
  end

  test "should get edit" do
    get edit_galatic_cluster_url(@galatic_cluster)
    assert_response :success
  end

  test "should update galatic_cluster" do
    patch galatic_cluster_url(@galatic_cluster), params: { galatic_cluster: {  } }
    assert_redirected_to galatic_cluster_url(@galatic_cluster)
  end

  test "should destroy galatic_cluster" do
    assert_difference('GalaticCluster.count', -1) do
      delete galatic_cluster_url(@galatic_cluster)
    end

    assert_redirected_to galatic_clusters_url
  end
end

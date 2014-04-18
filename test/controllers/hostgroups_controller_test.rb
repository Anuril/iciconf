require 'test_helper'

class HostgroupsControllerTest < ActionController::TestCase
  setup do
    @hostgroup = hostgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostgroup" do
    assert_difference('Hostgroup.count') do
      post :create, hostgroup: { alias: @hostgroup.alias, hostgroup_members: @hostgroup.hostgroup_members, hostgroup_name: @hostgroup.hostgroup_name, members: @hostgroup.members, note: @hostgroup.note }
    end

    assert_redirected_to hostgroup_path(assigns(:hostgroup))
  end

  test "should show hostgroup" do
    get :show, id: @hostgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostgroup
    assert_response :success
  end

  test "should update hostgroup" do
    patch :update, id: @hostgroup, hostgroup: { alias: @hostgroup.alias, hostgroup_members: @hostgroup.hostgroup_members, hostgroup_name: @hostgroup.hostgroup_name, members: @hostgroup.members, note: @hostgroup.note }
    assert_redirected_to hostgroup_path(assigns(:hostgroup))
  end

  test "should destroy hostgroup" do
    assert_difference('Hostgroup.count', -1) do
      delete :destroy, id: @hostgroup
    end

    assert_redirected_to hostgroups_path
  end
end

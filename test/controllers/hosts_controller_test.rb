require 'test_helper'

class HostsControllerTest < ActionController::TestCase
  setup do
    @host = hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host" do
    assert_difference('Host.count') do
      post :create, host: { address: @host.address, alias: @host.alias, check_command: @host.check_command, check_period: @host.check_period, display_name: @host.display_name, hostgroups: @host.hostgroups, hostname: @host.hostname, notification_interval: @host.notification_interval, notification_period: @host.notification_period, parents: @host.parents }
    end

    assert_redirected_to host_path(assigns(:host))
  end

  test "should show host" do
    get :show, id: @host
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host
    assert_response :success
  end

  test "should update host" do
    patch :update, id: @host, host: { address: @host.address, alias: @host.alias, check_command: @host.check_command, check_period: @host.check_period, display_name: @host.display_name, hostgroups: @host.hostgroups, hostname: @host.hostname, notification_interval: @host.notification_interval, notification_period: @host.notification_period, parents: @host.parents }
    assert_redirected_to host_path(assigns(:host))
  end

  test "should destroy host" do
    assert_difference('Host.count', -1) do
      delete :destroy, id: @host
    end

    assert_redirected_to hosts_path
  end
end

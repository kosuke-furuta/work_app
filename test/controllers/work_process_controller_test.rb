require 'test_helper'

class WorkProcessControllerTest < ActionDispatch::IntegrationTest
  test "should get print" do
    get work_process_print_url
    assert_response :success
  end

  test "should get drylaminate" do
    get work_process_drylaminate_url
    assert_response :success
  end

  test "should get exlaminate" do
    get work_process_exlaminate_url
    assert_response :success
  end

  test "should get slit" do
    get work_process_slit_url
    assert_response :success
  end

  test "should get bagmake" do
    get work_process_bagmake_url
    assert_response :success
  end

end

require "test_helper"

class NotepadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notepad = notepads(:one)
  end

  test "should get index" do
    get _notepads_url
    assert_response :success
  end

  test "should get new" do
    get new__notepad_url
    assert_response :success
  end

  test "should create notepad" do
    assert_difference("Notepad.count") do
      post _notepads_url, params: { notepad: {  } }
    end

    assert_redirected_to _notepad_url(Notepad.last)
  end

  test "should show notepad" do
    get _notepad_url(@notepad)
    assert_response :success
  end

  test "should get edit" do
    get edit__notepad_url(@notepad)
    assert_response :success
  end

  test "should update notepad" do
    patch _notepad_url(@notepad), params: { notepad: {  } }
    assert_redirected_to _notepad_url(@notepad)
  end

  test "should destroy notepad" do
    assert_difference("Notepad.count", -1) do
      delete _notepad_url(@notepad)
    end

    assert_redirected_to _notepads_url
  end
end

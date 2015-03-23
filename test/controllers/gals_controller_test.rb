require 'test_helper'

class GalsControllerTest < ActionController::TestCase
  setup do
    @gal = gals(:jennifera)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show gal" do
    get :show, id: @gal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gal
    assert_response :success
  end

  test "should update gal" do
    patch :update, id: @gal, gal: { id: @gal.id, name: @gal.name, worst_bad_date: @gal.worst_bad_date }
    assert_redirected_to gal_path(assigns(:gal))
  end

  test "should destroy gal" do
    assert_difference('Gal.count', -1) do
      delete :destroy, id: @gal
    end

    assert_redirected_to gals_path
  end
end

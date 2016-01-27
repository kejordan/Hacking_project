require 'test_helper'

class SuperSecretInformationsControllerTest < ActionController::TestCase
  setup do
    @super_secret_information = super_secret_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_secret_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_secret_information" do
    assert_difference('SuperSecretInformation.count') do
      post :create, super_secret_information: { bank_details: @super_secret_information.bank_details, embarrassing_facts: @super_secret_information.embarrassing_facts }
    end

    assert_redirected_to super_secret_information_path(assigns(:super_secret_information))
  end

  test "should show super_secret_information" do
    get :show, id: @super_secret_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_secret_information
    assert_response :success
  end

  test "should update super_secret_information" do
    patch :update, id: @super_secret_information, super_secret_information: { bank_details: @super_secret_information.bank_details, embarrassing_facts: @super_secret_information.embarrassing_facts }
    assert_redirected_to super_secret_information_path(assigns(:super_secret_information))
  end

  test "should destroy super_secret_information" do
    assert_difference('SuperSecretInformation.count', -1) do
      delete :destroy, id: @super_secret_information
    end

    assert_redirected_to super_secret_informations_path
  end
end

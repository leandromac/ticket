require 'test_helper'

class MyticketsControllerTest < ActionController::TestCase
  setup do
    @myticket = mytickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myticket" do
    assert_difference('Myticket.count') do
      post :create, myticket: { category: @myticket.category, category: @myticket.category, date: @myticket.date, deadline: @myticket.deadline, departament: @myticket.departament, id_customer: @myticket.id_customer, mensage: @myticket.mensage, status: @myticket.status, subject: @myticket.subject, upload: @myticket.upload }
    end

    assert_redirected_to myticket_path(assigns(:myticket))
  end

  test "should show myticket" do
    get :show, id: @myticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myticket
    assert_response :success
  end

  test "should update myticket" do
    patch :update, id: @myticket, myticket: { category: @myticket.category, category: @myticket.category, date: @myticket.date, deadline: @myticket.deadline, departament: @myticket.departament, id_customer: @myticket.id_customer, mensage: @myticket.mensage, status: @myticket.status, subject: @myticket.subject, upload: @myticket.upload }
    assert_redirected_to myticket_path(assigns(:myticket))
  end

  test "should destroy myticket" do
    assert_difference('Myticket.count', -1) do
      delete :destroy, id: @myticket
    end

    assert_redirected_to mytickets_path
  end
end

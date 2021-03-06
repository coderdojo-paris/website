require 'test_helper'

class FaqsControllerTest < ActionController::TestCase
  setup do
    @faq = faqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faq" do
    assert_difference('Faq.count') do
      post :create, faq: { content_en: @faq.content_en, content_fr: @faq.content_fr, faq_type_id: @faq.faq_type_id, title_en: @faq.title_en, title_fr: @faq.title_fr }
    end

    assert_redirected_to faq_path(assigns(:faq))
  end

  test "should show faq" do
    get :show, id: @faq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faq
    assert_response :success
  end

  test "should update faq" do
    patch :update, id: @faq, faq: { content_en: @faq.content_en, content_fr: @faq.content_fr, faq_type_id: @faq.faq_type_id, title_en: @faq.title_en, title_fr: @faq.title_fr }
    assert_redirected_to faq_path(assigns(:faq))
  end

  test "should destroy faq" do
    assert_difference('Faq.count', -1) do
      delete :destroy, id: @faq
    end

    assert_redirected_to faqs_path
  end
end

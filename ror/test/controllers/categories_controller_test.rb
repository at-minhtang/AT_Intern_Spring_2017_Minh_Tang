require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
  test "should get list" do
    get list_url
    assert_response :success
    assert_select "title", "List | #{@base_title}"
  end

  test "should get help" do
    get helf_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

end

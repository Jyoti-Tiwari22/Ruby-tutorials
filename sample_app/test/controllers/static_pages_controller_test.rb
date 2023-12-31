require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup

    @base_title = "Ruby on Rails Tutorial Sample App"

  end
  test "should get root" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get article" do
    get static_pages_article_url
    assert_response :success
    assert_select "title", "Article | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end

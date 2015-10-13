require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest
  test 'namespace for admin' do
    get '/admin/posts'
    assert_select 'h1', text: '投稿(Admin)'
    assert_match 'Admin::Post', response.body
  end
  test 'namespace for content' do
    get '//posts'
    assert_select 'h1', text: '投稿(Content)'
    assert_match 'Content::Post', response.body
  end
end
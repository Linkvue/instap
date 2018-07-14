require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { author_id: @comment.author_id, blocked_at: @comment.blocked_at, blocker_id: @comment.blocker_id, content_id: @comment.content_id, id: @comment.id, modified_at: @comment.modified_at, post_id: @comment.post_id, published_at: @comment.published_at, referer_id: @comment.referer_id, title: @comment.title } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { author_id: @comment.author_id, blocked_at: @comment.blocked_at, blocker_id: @comment.blocker_id, content_id: @comment.content_id, id: @comment.id, modified_at: @comment.modified_at, post_id: @comment.post_id, published_at: @comment.published_at, referer_id: @comment.referer_id, title: @comment.title } }
    assert_redirected_to comment_url(@comment)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end
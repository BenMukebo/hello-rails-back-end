require 'test_helper'

class Api::MessagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_messages_index_url
    assert_response :success
  end
end

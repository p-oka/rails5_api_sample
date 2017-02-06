require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET users/1' do
    # 簡単のためこのようにしていますが、データ投入にはFixturesやFactoryGirlを使ってください
    User.create(name: 'otyoppu', mail: 'otyoppu@example.com')
    let(:user) { create(:user) }

    it 'ユーザの情報が取得できる' do
      get "/users/#{user.id}"

      expect(response).to have_http_status(:ok)
      expect(JSON(response.body)).to match(
        'id'       => user.id,
        'mail'     => user.mail,
        'name'     => user.name,
        'password' => user.password
      )
    end
  end
end
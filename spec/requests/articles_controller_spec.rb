require 'rails_helper'

describe 'ArticlesController' do
  let!(:articles) { create_list(:article, 10)}
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when requesting articles' do
    it 'succeeds' do
      get articles_path
      expect(response).to have_http_status(:ok)
    end
  end
end

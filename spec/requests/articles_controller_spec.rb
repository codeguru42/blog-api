require 'rails_helper'

describe 'ArticlesController' do
  let!(:articles) { create_list(:article, 10)}

  context 'when requesting articles' do
    it 'succeeds' do
      get articles_path
      expect(response).to have_http_status(:ok)
    end
  end

  context 'when requesting latest_article' do
    it 'succeeds' do
      get latest_articles_path
      expect(response).to have_http_status(:ok)
    end
  end
end

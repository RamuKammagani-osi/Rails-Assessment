require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    let(:category) { Category.create(name: 'Hello World' ) }
    let(:post_attributes) do
        {
            id: 1
        }
    end
    describe '.new' do
        it 'should return :success' do
            get :new
            expect(response).to have_http_status(:success)
        end
    end

    describe '.create' do
        it 'should return :success' do
            post :create, params: { post: { title: 'hello', description: 'world', category_id: category.id } } 
            expect(response).to have_http_status(:found)
        end
        
        it 'should return :success' do
            post :create, params: { post: post_attributes}
            expect(response).to render_template(:new)
        end
    end
end

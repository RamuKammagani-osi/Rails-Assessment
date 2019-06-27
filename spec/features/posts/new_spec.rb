require 'rails_helper'

RSpec.feature "Posts::New", type: :feature do
    describe 'form' do
        it 'should show form for post' do
            expect(page).to have_css(:label, text: 'Title')
        end
    end
end

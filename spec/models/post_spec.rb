require 'rails_helper'

RSpec.describe Post, type: :model do
    describe '.associations' do
        it { is_expected.to belong_to(:category) }
    end

    describe '.validations' do
        it { is_expected.to validate_presence_of(:category) }
        it { is_expected.to validate_presence_of(:title) }
    end
end

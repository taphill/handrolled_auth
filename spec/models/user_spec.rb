require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'when user authenticates with us' do
      it { is_expected.to validate_presence_of(:username) }
      it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_presence_of(:password_confirmation) }
    end

    context 'when user authenticates with oauth' do
      # TODO: add oauth validation tests
    end
  end
end

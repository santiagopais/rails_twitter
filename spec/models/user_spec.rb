require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end
end

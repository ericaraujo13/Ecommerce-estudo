require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validators' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone) }
  end

  context 'when fields are required' do
    it 'when field name is valid' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'when fild name is not valid' do
      user = build(:user, name: nil)

      expect(user.valid?).to eq(false)
    end

    it 'when field last_name is valid' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'when fild last_name is not valid' do
      user = build(:user, last_name: nil)

      expect(user.valid?).to eq(false)
    end

    it 'when field phone is valid' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'when fild phone is not valid' do
      user = build(:user, phone: nil)

      expect(user.valid?).to eq(false)
    end

    it 'when field password is valid' do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end

    it 'when fild password is not valid' do
      user = build(:user, password: nil)

      expect(user.valid?).to eq(false)
    end

    it 'when the email is unique' do
      user1 = create(:user)
      user2 = build(:user, email: user1.email)


      expect(user2.valid?).to eq(false)
    end
  end
end

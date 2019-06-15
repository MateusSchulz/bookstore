require 'rails_helper'

RSpec.describe Order, type: :model do
  it {should validate_presence_of :user_id}
  it {should validate_presence_of :name}
  it {should validate_presence_of :address}
  it {should validate_presence_of :city}
  it {should validate_presence_of :state}
  it {should validate_presence_of :total_price}

  describe 'associations' do
  	it { should have_many(:line_items) }
  	it { should belong_to(:user) }
	end
end

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
  	it { should belong_to(:category) }
  	it { should belong_to(:author) }
	end
end

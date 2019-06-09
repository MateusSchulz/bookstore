require 'rails_helper'
require 'spec_helper'

RSpec.describe Book, type: :model do
    describe 'validation tests' do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:description) }
        it { should validate_presence_of(:price) }
        it { should validate_numericality_of(:price) }
    end
end
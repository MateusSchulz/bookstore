require 'rails_helper'
require 'spec_helper'

RSpec.describe Book, type: :model do
    describe 'validation tests' do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:description) }
        it { should validate_presence_of(:price) }
        it { should validate_numericality_of(:price) }
        it { should have_attached_file(:avatar) }
        #it { should validate_attachment_presence(:avatar) }
        #it { should validate_attachment_content_type(:avatar).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
        #it { should validate_attachment_size(:avatar).less_than(2.megabytes) }
    end
end
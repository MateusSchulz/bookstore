require 'rails_helper'
require 'spec_helper'

RSpec.describe LineItem, type: :model do
  it { should belong_to(:order) }
  it { should belong_to(:book) }
end
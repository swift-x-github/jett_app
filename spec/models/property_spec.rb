require 'rails_helper'

RSpec.describe Property, type: :model do
  it { should belong_to(:account)}
  it { should belong_to(:category)}
end

require 'rails_helper'

RSpec.describe Item, type: :model do

  let(:my_user) { create(:user) }
  let(:my_item) { create(:item) }

  it { should belong_to(:user) }
  it { should respond_to(:name) }

end

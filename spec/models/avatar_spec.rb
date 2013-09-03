require 'spec_helper'

describe Avatar do
 let(:user) { FactoryGirl.create(:user) }
  before { @avatar = user.build_avatar(cos z factory girl?) }

  subject { @avatar }

  it { should respond_to(:age) }
  it { should respond_to(:height) }
  it { should respond_to(:weight) }
  it { should respond_to(:male) }
  it { should respond_to(:activeness) }
  it { should respond_to(:bee) }
  it { should respond_to(:bmr) }
  it { should respond_to(:calories_needed) }
  it { should respond_to(:fat_needed) }
  it { should respond_to(:proteins_needed) }
  it { should respond_to(:carbohydrates_needed) }
  it { should respond_to(:alcohol_needed) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @avatar.user_id = nil }
    it { should_not be_valid }
  end
end

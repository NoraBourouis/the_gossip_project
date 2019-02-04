require 'rails_helper'
require 'faker'
RSpec.describe User, type: :model do
  before(:each) do 
    city = FactoryBot.create(:city)
    @user = User.create(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,description:Faker::FamousLastWords.last_words,email:Faker::Internet.email,age:rand(18..29),city_id: city.id)
  
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
  end

  context "associations" do

    describe "gossips" do
      it "should have_many gossips" do
        gossip = Gossip.create(user: @user)
        expect(@user.gossips.include?(gossip)).to eq(true)
      end
    end

  end


end

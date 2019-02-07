require 'rails_helper'
require 'faker'

RSpec.describe Gossip, type: :model do
  before(:each) do 
  city = FactoryBot.create(:city)

  user = User.create(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,description:Faker::FamousLastWords.last_words,email:Faker::Internet.email,age:rand(18..29),city_id:city.id)

  @gossip = Gossip.create!(title:Faker::DrWho.villian ,content:Faker::DrWho.quote, user_id: user.id)

end

context "validation" do
  it "is valid with valid attributes" do
    city = FactoryBot.create(:city)
    user = FactoryBot.create(:user, city: city)
    gossip = FactoryBot.create(:gossip, user: user)
    expect(gossip).to be_a(Gossip)
    expect(gossip).to be_valid
  end
end

context "associations" do
  describe "comments" do
    it "should have_many comments" do
      city = FactoryBot.create(:city)
      user = FactoryBot.create(:user, city: city)
      gossip = FactoryBot.create(:gossip, user: user)
      comment = FactoryBot.create(:comment, gossip: gossip, user: user)
      expect(gossip.comments.include?(comment)).to eq(true)
    end
  end
end


end
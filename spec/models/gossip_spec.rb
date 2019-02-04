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
    expect(@gossip).to be_a(Gossip)
    expect(@gossip).to be_valid
  end
end

end
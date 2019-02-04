require 'rails_helper'
require 'faker'

RSpec.describe City, type: :model do
  before(:each) do 
    user = User.first
    @city = City.create!(name:Faker::GameOfThrones.city,zip_code:Faker::Address.zip_code)
    
    
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
      expect(@city).to be_valid
    end
  end

=begin
  context "associations" do

    describe "users" do
      it "should have_many users" do
        user = User.create(city: @city)
        expect(@city.users.include?(user)).to eq(true)
      end
    end

  end
=end
end

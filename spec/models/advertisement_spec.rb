require 'rails_helper'

RSpec.describe Advertisement, type: :model do

  let(:advertisement) { Advertisement.create!(title: "New Ad Title", body: "New Ad Body", price: 100) }

  describe "attributes" do
    it "has a title attribute" do
      expect(advertisement).to have_attributes(title: "New Ad Title")
    end
    it "has a body attribute" do
      expect(advertisement).to have_attributes(body: "New Ad Body")
    end
    it "has a price attribute" do
      expect(advertisement).to have_attributes(price: 100)
    end
  end
end

# == Schema Information
#
# Table name: weapons
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  damage     :integer
#  created_at :datetime
#  updated_at :datetime
#  min_tech   :integer          default(0)
#

require 'rails_helper'

RSpec.describe Weapon, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "Factories" do 
    it ":health" do 
      gun = FactoryGirl.create(:gun)
      expect(gun.id).to be > 0
    end

    it ":health_800" do 
      gun = FactoryGirl.create(:rifle)
      expect(gun.id).to be > 0
    end

    it ":health_1000" do 
      gun = FactoryGirl.create(:machine_gun)
      expect(gun.id).to be > 0
    end

    it ":health_x" do 
      gun = FactoryGirl.create(:bazuka)
      expect(gun.id).to be > 0
    end

    it "should not create two different instances for the same (defined) Weapon" do 
      gun1 = FactoryGirl.create(:bazuka)
      gun2 = FactoryGirl.create(:bazuka)
      # expect(gun1.id == gun2.id).to be true
    end

    it "should have a min_tech value" do
      gun = FactoryGirl.create(:gun)
      expect(gun.min_tech).not_to be(nil)
    end

    it "should have a min_tech value greater than or equal to 0" do
      gun = FactoryGirl.create(:gun)
      expect(gun.min_tech).to be >= 0
    end

  end

end

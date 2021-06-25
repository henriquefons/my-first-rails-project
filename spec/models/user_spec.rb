require "rails_helper"

RSpec.describe User, :type => :model do
  let(:user) {
    FactoryBot.build(:user)
  }
  context "Validar user" do 
    it "ele seja valido" do
      expect(user).to be_valid
    end
      it "senha nao seja valida" do
        user.password = "123"
        expect(user).to_not be_valid
    end
      it "email nao seja valido" do
        user.email = nil
        expect(user).to_not be_valid
    end
  end
end

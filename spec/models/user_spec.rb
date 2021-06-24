require "rails_helper"

RSpec.describe User, :type => :model do
  context "Validar user" do
    subject {
      described_class.new(email: "test40@test.com", password: "123566")
    }
    it "ele seja valido" do
      expect(subject).to be_valid
    end
      it "senha nao seja valida" do
        subject.password = "124"
        expect(subject).to_not be_valid
    end
      it "email nao seja valido" do
        subject.email = nil
        expect(subject).to_not be_valid
    end
  end
end

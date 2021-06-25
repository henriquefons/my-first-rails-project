require 'rails_helper'

RSpec.describe Article, :type => :model do 
  context "Validar artigo" do

    let(:artigo) {
      FactoryBot.build(:article)
    } 

    describe "Associations" do
      it { should belong_to(:user).without_validating_presence }
      it { should have_many(:comments) }
    end

    it "ele seja valido" do 
      expect(artigo).to be_valid
    end

    it "ele nao seja valido sem titulo" do 
      artigo.title = nil
      expect(artigo).to_not be_valid
    end
  end
end
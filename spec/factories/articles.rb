FactoryBot.define do
  factory :article do
    title { "Teste unitario" }
    body { "TestTeste unitarioe unitario" }
    status { "public" }
    user { FactoryBot.build(:user)}
  end
end

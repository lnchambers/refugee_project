FactoryBot.define do
  factory :user do
    username "Opakawagalaga Eupanifahorious"
    first_name "Opakawagalaga"
    last_name "Eupanifahorious"
    role 0
    password "This is my password. There are many like it, but this one is mine."
    email "Opakawagalaga@Eupanifahorious.net"
  end

  factory :admin, class: :user do
    username "Benefihitious Rumbagumplton the Third"
    first_name "Benefihitious"
    last_name "Rumbagumplton"
    role 1
    password "This is my password. There are many like it, but this one is mine."
    email "Benefihitious@Rumbagumplton.net"
  end
end

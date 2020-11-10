FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published do
      r = rand(0..1)
      !(r == 0)
    end
    user #AL dejarlo de esta manera factory bot ya sabe que debe crear una relación con User
  end


  factory :published_post, class: "Post" do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published { true }
    user #AL dejarlo de esta manera factory bot ya sabe que debe crear una relación con User
  end


end

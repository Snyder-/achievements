FactoryGirl.define do
  factory :achievement do
    title "Awesome generic achievement"
    description "I did it!"
    privacy 0
    featured false
    cover_image "achievement_image.png"

    factory :public_achievement do
      title "Everyone knows what I'm doing"
      privacy 0
    end

    factory :private_achievement do
      title "Only I can see this!"
      privacy 1
    end

    factory :friends_only_achievement do
      title "Only my besties see this"
      privacy 2
    end

    factory :invalid_factory do
      title ""
    end
  end
end

# frozen_string_literal: true

100.times do
  user = User.create!(name: Faker::Name.name,
                      email: Faker::Internet.email,
                      password: Faker::Internet.password(8))

  3.times do
    user.posts.published.create!(title: Faker::Lorem.sentence.gsub(/\./, ""),
                                 body: Faker::Lorem.paragraph)
  end
end

users = User.all.to_a

Post.all.each do |post|
  users.sample(2).each do |user|
    post.comments.create!(body: Faker::Lorem.sentence,
                          user: user,
                          published: true)
  end
end

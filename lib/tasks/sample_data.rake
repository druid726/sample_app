namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)

    user = User.all(limit: 6)
    50.times do |n|
      content = Faker::Lorem.sentence(5)
      user.each { |user| user.microposts.create!(content: content) }
    end
  end
end


5.times do |i|
  User.create!(email: Faker::Internet.email)  
end

10.times do |i|
  article = Article.create!(title: Faker::Lorem.word, body: Faker::Lorem.paragraphs(i%10).join(' ') )
  puts "Created Article #{i}"

  rand(5).times do |i|
    the_user = User.find(1)
    article.comments.create!(body: Faker::Lorem.paragraphs(i+1).join(' '), user: the_user)
    puts "Created comment for #{article.title} "
  end
end

last_article = Article.last
100.times do |i|
    the_user = User.find(1)
    last_article.comments.create!(body: Faker::Lorem.paragraphs(i+1).join(' '), user: the_user)
end

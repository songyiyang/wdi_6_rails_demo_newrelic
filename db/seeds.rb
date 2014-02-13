1000.times do |i|
  article = Article.create!(title: Faker::Lorem.word, body: Faker::Lorem.paragraphs(i%10).join(' ') )
  puts "Created Article #{i}"


  rand(5).times do |i|
    article.comments.create!(body: Faker::Lorem.paragraphs(i).join(' '))
    puts "Created comment for #{article.title} "
  end
end
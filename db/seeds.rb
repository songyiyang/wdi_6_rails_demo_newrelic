1000.times do |i|
  Article.create!(title: Faker::Lorem.word, body: Faker::Lorem.paragraphs(i%10).join(' ') )
  puts "Created Article #{i}"
end
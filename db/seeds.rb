# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My blog Post #{blog}",
    body: "At vero eos et accusamus et iusto odio
    dignissimos ducimus qui blanditiis praesentium
    voluptatum deleniti atque corrupti quos dolores
    et quas molestias excepturi sint occaecati
    cupiditate non provident, similique sunt in
    culpa qui officia deserunt mollitia animi,
    id est laborum et dolorum fuga.",
    topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
    title: "Ruby on rails",
    percent_utilized: 35
  )
end

puts "5 skills created"

8.times do |prortfolio_item|
  Portfolio.create!(
    title: "Porfolio title #{prortfolio_item}",
    subtitle: "Ruby on rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
    culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |prortfolio_item|
  Portfolio.create!(
    title: "Porfolio title #{prortfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
    culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 porfolios created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"

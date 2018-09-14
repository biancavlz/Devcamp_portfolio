# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: "test@test.com",
  password: "test123",
  password_confirmation: "test123",
  name: "Admin User test",
  roles: "side_admin"
)

puts "1 side admin user created"

User.create!(
  email: "test2@test.com",
  password: "test123",
  password_confirmation: "test123",
  name: "Regular User test"
)

puts "1 regular user created"

topics_titles = ['Ruby', 'Ruby On Rails','JavaScript', 'HTML', 'CSS' ]
topics_titles.each do |title|
  Topic.create!(
    title: "#{title}"
  )
end

puts "5 topics created"

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

skills = ['Ruby', 'Ruby On Rails','JavaScript', 'HTML', 'CSS', 'MySQL' ]
skills.each_with_index do |skill, index|
  Skill.create!(
    title: "#{skill}",
    percent_utilized: index * 20
  )
end

puts "6 skills created"

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

technologies = ['Ruby', 'Ruby On Rails','JavaScript']
technologies.each do |technology|
  Portfolio.last.technologies.create!(
    name: "#{technology}"
  )
end

puts "3 technologies created"

articles = [
  {
    title: "Welcome to Code School of Guam",
    content: "This is our very first article! Stay tuned for more updates and helpful content."
  },
  {
    title: "Learning Ruby on Rails",
    content: "Rails makes full-stack web development fast and enjoyable! Build something amazing today."
  },
  {
    title: "Community Matters",
    content: "We're building a strong tech community in Guam. Join us in growing local talent!"
  }
]

articles.each do |article|
  Article.create!(article)
end

puts "Seeded #{Article.count} articles 🎉"
Topic.create!(
  title: "Coding"
  )
  
Topic.create!(
  title: "Gaming"
  )
  
Topic.create!(
  title: "Art"
  )

Blog.create!(
  title: "How to draw circles",
  body: "Step one: envision a circle in your mind...",
  topic_id: 3
  )

Blog.create!(
  title: "Ruby",
  body: "What this site was built with!",
  topic_id: 1
  )

Blog.create!(
  title: "Sharpening a pencil",
  body: "For those who don't know how...",
  topic_id: 3
  )

Blog.create!(
  title: "Overwatccc",
  body: "Cause copyrights.",
  topic_id: 2
  )

Blog.create!(
  title: "JavaScript",
  body: "My personally favorite coding language.",
  topic_id: 1
  )

3.times do|x|
  Skill.create!(
    title: "I am proficient at: #{x}",
    time_spent: 12
    )
end

3.times do|x|
  Portfolio.create!(
    title: "I am proficient at:",
    subtitle: "Ruby",
    body: "Placeholders galore",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

Portfolio.create!(
  title: "I am proficient at:",
  subtitle: "JavaScript",
  body: "Placeholders galore",
  main_image: "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/350x200"
  )
  
  3.times do|x|
  Portfolio.last.technologies.create!(
    name: "Technology #{x}"
    )
end
  
  User.create!(name: 'Default_Admin', password: 'aaaaaa', email: 'a@a')

puts "Complete."
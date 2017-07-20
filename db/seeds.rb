3.times do|x|
  Topic.create!(
    title: "Topic# #{x}"
    )
end

3.times do|x|
  Blog.create!(
    title: "Post# #{x}",
    body: "This post is a placeholder.",
    topic_id: Topic.last.id
    )
end

3.times do|x|
  Skill.create!(
    title: "I am proficient at: #{x}",
    time_spent: "0"
    )
end

3.times do|x|
  Portfolio.create!(
    title: "I am proficient at:",
    subtitle: "Ruby",
    body: "Placeholders galore",
    main_image: "http://via.placeholder.com/700x400",
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

Portfolio.create!(
  title: "I am proficient at:",
  subtitle: "JavaScript",
  body: "Placeholders galore",
  main_image: "http://via.placeholder.com/700x400",
  thumb_image: "http://via.placeholder.com/350x200"
  )
  
  3.times do|x|
  Portfolio.last.technologies.create!(
    name: "Technology #{x}"
    )
end

puts "Complete."
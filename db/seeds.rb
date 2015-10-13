
words = %w(Morning Afternoon Evening)

words.each.with_index do |name, rank|
  Category.find_or_create_by(name: name) do |c|
    c.rank = rank
  end
end

words.each do |name|
  Post.find_or_create_by(name: name.underscore) do |p|
    p.title        = "#{ name } Tea"
    p.body         = "I have drunk a lot of #{ name.underscore } tea."
    p.published_at = Time.zone.now
    p.category     = Category.find_by(name: name)
  end
end

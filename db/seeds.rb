%w[Movies Electronics Books].each do |category|
    Category.find_or_create_by(name: category)
end

('a'..'z').to_a.each_with_index do |letter, index|
    Post.create(title: letter, description: index, category: Category.all.sample)
end

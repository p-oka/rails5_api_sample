5.times do |num|
  User.create(name: "user_#{num}", mail: "#{num}@example.com")
end

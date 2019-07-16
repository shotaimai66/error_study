# coding: utf-8

# User.create!( name: "管理者",
#               email: "sample@email.com",
#               password: "password",
#               password_confirmation: "password",
#               admin: true)
              
# User.create!( name: "ゲスト管理者",
#               email: "guest-admin@email.com",
#               password: "password",
#               password_confirmation: "password",
#               admin: true)
              
# User.create!( name: "ゲストユーザー",
#               email: "guest@email.com",
#               password: "password",
#               password_confirmation: "password")
              
# 97.times do |n|
#   name  = Faker::Name.name
#   email = "sample-#{n+1}@email.com"
#   password = "password"
#   User.create!(name: name,
#               email: email,
#               password: password + (n + 1).to_s,
#               password_confirmation: password + (n + 1).to_s)
# end

# puts "Users Created"

# admin_user = User.first
# guest_admin = User.find(2)
# guest_user = User.find(3)

# 50.times do |n|
#   task_name = "タスク#{n + 1}"
#   description = "タスク詳細#{n + 1}"
#   admin_user.tasks.create!(name: task_name, description: description)
#   guest_admin.tasks.create!(name: task_name, description: description)
#   guest_user.tasks.create!(name: task_name, description: description)
# end

# puts "Tasks Created"
# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spike = User.create!(email: 'spike2@colgate.edu', password: 'supersecure')

myTask = Task.create(title: 'Do cosc415 reading', due: DateTime.new, user_id: spike.id)
task2 = Task.create(title: 'Do cosc415 reading', description: 'hi :)', start: DateTime.new.noon, due: DateTime.new,
            complete: true, user_id: spike.id)
Task.create(title: 'Do cosc415 reading', due: DateTime.new(2021, 11, 7), user_id: spike.id)
Task.create(title: 'SWE iteration 2', start: DateTime.new(2021, 11, 8), due: DateTime.new(2021, 11, 21),
            complete: true, user_id: spike.id)
Task.create(title: 'SWE iteration 3', start: DateTime.new(2021, 11, 22), due: DateTime.new(2021, 12, 5), user_id: spike.id)
Task.create(title: 'Physics HW', description: 'boring', start: DateTime.new(2021, 11, 3),
            due: DateTime.new(2021, 11, 4), complete: true, user_id: spike.id)
Task.create(title: 'Write Capybara tests', description: 'not boring', start: DateTime.new(2021, 11, 3),
            due: DateTime.new(2021, 11, 3), user_id: spike.id)
Task.create(title: 'Put away christmas decorations', due: DateTime.new(2022, 0o1, 7), complete: true, user_id: spike.id)

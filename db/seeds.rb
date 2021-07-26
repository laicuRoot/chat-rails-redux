# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Destroy messages, users and channels (in that order)
# Create some channels (general, paris, react for instance)
# Create some users (needs email / password)
# Create some messages in several channels.

require 'faker'

p 'Cleaning DB...'
Message.destroy_all
User.destroy_all
Channel.destroy_all

channels = ['general', 'paris', 'react']

channels.each do |channel|
  new_channel = Channel.new(name: channel)
  new_channel.save!
  new_channel
  10.times do
    new_user = User.create({
      email: "#{Faker::Name.first_name}@gmail.com",
      password: Faker::IDNumber.spanish_citizen_number
    })
    new_user
    message = Message.new({
    content: Faker::Movies::BackToTheFuture.quote,
    user: new_user,
    channel: new_channel})
    message.save!
  end
end




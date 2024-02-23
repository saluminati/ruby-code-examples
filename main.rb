require 'rubygems'
require 'faker'

emails = []

1000.times do |item|
  temp = Faker::Internet.email
  emails.push(temp)
end

puts emails

require 'rubygems'
require 'faker'

emails = []

100.times do |item|
    temp = Faker::Internet.email
    emails.push(temp)
end

File.open('emails.txt', 'w') do |f|
  f.puts(emails)
end

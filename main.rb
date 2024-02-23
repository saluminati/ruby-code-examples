require 'rubygems'
require 'faker'


def write_emails_to_file(number_of_times, file_name)
  emails = []
  number_of_times.times do |item|
    temp = Faker::Internet.email
    emails.push(temp)
  end

  File.open(file_name, 'w') do |f|
      f.puts(emails)
  end
end

def write_usernames_to_file(number_of_times, file_name)
  usernames = []

  number_of_times.times do |item|
    temp = Faker::Internet.username
    usernames.push(temp)
  end

  File.open(file_name, 'w') do |f|
    f.puts(usernames)
  end
end

# write_emails_to_file(500, 'my_emails.txt')
write_usernames_to_file(50, 'usernames.txt')

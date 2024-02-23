require 'rubygems'
require 'faker'


def write_to_file(file_name, data)
  File.open(file_name, 'w') do |f|
    f.puts(data)
  end
end


def generate_item(type)
  case type
  when 'email'
    return Faker::Internet.email
  when 'username'
    return Faker::Internet.username
  when 'book_title'
    return Faker::Book.title
  end
end

def seed_data(type, number_of_times, file_name)
  results = []

  number_of_times.times do |item|
    temp = generate_item(type)
    results.push(temp)
  end

  write_to_file(file_name, results)
end


seed_data('book_title', 50, 'book_title.txt')


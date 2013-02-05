require 'pry'
require 'HTTParty'
require 'pg'
require 'json'

conn = PG.connect(:dbname =>'movie_setup_db', :host => 'localhost')
conn.exec( "select * from movies" ) do |result|
  result.each do |row|
  end
end

print 'Please enter movie title: '
title = gets.chomp.downcase.split

data = HTTParty.get("http://www.omdbapi.com/?t=#{title.join('+')}")
d1 = JSON(data.body)

sql = "insert into movies (#{d1.keys.join(', ')}) values ('#{d1.values.join('\', \'')}')"

conn.exec(sql)

conn.close
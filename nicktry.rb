require 'pg'
require 'httparty'
require 'pry'
require 'rainbow'



conn = PG.connect( :password => 'password',:user => 'postgres', :dbname =>'facebook', :host => 'localhost')
conn.exec( "select * from people" ) do |result|
  result.each do |row|
     puts row['a1']

  end
end

print 'full name: '
name = gets.chomp.split
print 'dob: '
dob = gets.chomp
print 'rel: '
rel = gets.chomp
print 'city: '
city = gets.chomp

sql = "insert into people (first, last, dob, rel_status, city) values ('#{name[0]}', '#{name[1]}', '#{dob}', '#{rel}', '#{city}')"
conn.exec(sql)

conn.close
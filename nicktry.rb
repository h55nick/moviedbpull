require 'pg'
require 'httparty'
require 'pry'
require 'rainbow'
require 'json'

def  add_to_movie_table(data)
  conn = PG.connect( :password => 'password',:user => 'postgres', :dbname =>'moviez', :host => 'localhost')
  ids ="(title,year,rated,released,runtime,genre,director,writer,actors,plot,poster,imdbRating,imdbVotes,imdbID,response)"
  hashvalues = data.values.join('","').insert(0, '"').insert(-1,'"')
  #puts data.keys
  #puts hashvalues
  sql = "insert into movies #{ids} values (#{hashvalues})"
  conn.exec(sql)
  conn.close
end


def get_and_input(movie_name) #boolean return that determines if it was added
  #This will get the data via httparty
  movie_data = JSON(HTTParty.get('http://www.omdbapi.com/?t=' + movie_name.split().join("+").to_s).body)
  #puts movie_data
  #if movie_data[:error] != nil #The movie has been found.
    #This will save it to the database
    add_to_movie_table(movie_data)
    #return true #data was found
 # else
    #eturn false # Data was not added because movie was not found
  #end
end

## Connect. (mine needs password and correct user (DONT HACK MY DATABASE!) )

##Get user input unil quit
begin

  print "Please enter a movie you would like to add to the Database: \n (Enter Q to quit)\n --> \n"
  movie = gets.chomp.upcase # upcase just incase

  if movie != 'Q'
    get_and_input(movie)
  end


end while movie != 'Q'

=begin

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
=end

# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address

get '/contact' do
  "123 Aftonshire Way, Austin, TX 78732"
end

# write a GET route that displays a person's name as query parameter
# query parameter is in url as ?name=Rachel

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route that uses route parameters to add two numbers and respond with result

get '/add/:integer1/:integer2' do
  integer1 = params[:integer1]
  integer2 = params[:integer2]
  result = integer1.to_i + integer2.to_i
  "#{integer1} + #{integer2} = #{result}"
end

# Make a route that allows the user to search the database in some way

get '/name' do
  send_file 'form.html'
end

post '/name' do
  find_student = db.execute("SELECT students.name, students.campus FROM students WHERE students.name=?", params[:student])
  find_student[0]['name'].to_s
end



















# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# delete students via form
get '/students/delete' do
  erb :delete_student
end

post '/delete' do
  @ids = db.execute("SELECT id FROM students")
  input_id = params['id'].to_i
  @ids.each do |indiv_hash|
    if input_id == indiv_hash['id']
      db.execute("DELETE FROM students WHERE id=?", [input_id])
    end
  end
  redirect '/'
end

# show students by campus
get '/campus/:campus' do
	@city = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
	erb :campus
end
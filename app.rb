require 'sinatra'
require 'erb'
require 'pg'





class MyApp < Sinatra::Base
  get '/' do
    conn = PG.connect(
      dbname: 'aula02',
      user: 'postgres',
      host: 'localhost',
      port: 5432,
      password: nil
    )

    result = conn.exec("SELECT * FROM photos")

    erb :index, locals: { result: result }
  end
end
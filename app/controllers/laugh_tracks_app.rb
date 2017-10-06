require 'pry'
class LaughTracksApp < Sinatra::Base

get '/comedians' do

  if params[:age]
    @comedian = Comedian.where(age: params[:age])
  else
    @comedian = Comedian.all
  end
  erb :index
end

get '/comedians/:id' do
  @comedian = Comedian.find(params[:id])
  erb :show
end



end

get '/categories' do
  @bookmarks = Bookmark.all
  erb :'categories/index'
end

get '/categories/new' do
  @bookmark = Bookmark.new
  erb :'categories/new'
end

post '/categories' do
  @bookmark = Bookmark.new(params[:bookmark])
  @bookmark.save
  redirect to('/categories')
end

get '/categories/:id/edit' do
  @bookmark = Bookmark.find(params[:id])
  erb :'categories/edit'
end

post '/categories/:id' do
  @bookmark = Bookmark.find(params[:id])
  @bookmark.update_attributes(params[:bookmark])
  redirect to('/categories')
end

post '/categories/:id/delete' do
  bookmark = Bookmark.find(params[:id])
  bookmark.destroy
  redirect to('/categories')
end

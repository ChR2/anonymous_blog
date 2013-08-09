get '/' do
  @posts = Post.order('created_at DESC').limit(5).offset(1)
  @post = Post.order('created_at DESC').first
  erb :index
end

get '/posts/new' do
  erb :new
end

post '/posts' do
  @post = Post.new(params[:post])
  if @post.save
    redirect to '/' #later I want this to go to the new post page
  else
    erb :new
  end
end

class GifsController < ApplicationController
 def show
  @gif = Gif.find_by(id: params['id'])
  @user = User.find_by(id: @gif.user_id)
   
    render 'show'
  end
  
  def new
  end
  
  def create
    @gif = Gif.new
    @gif.caption = params['caption']
    @gif.url = params['url']
    @gif.user_id = params['user_id']
   if @gif.save
    redirect_to "/gifs/#{ @gif.id }"
   else render 'new_gif'
   end
  end
  
  def edit
    @gif = Gif.find_by(id: params['id'])
  end
  
  def update
  @gif = Gif.find_by(id: params['id'])
  @gif.caption = params['caption']
  @gif.url = params['url']
    @gif.user_id = params['user_id']
  if @gif.save
  redirect_to "/gifs/#{ @gif.id }"
  else render 'edit'
  end
end
  
  def destroy
    @gif = Gif.find_by(id: params['id'])
    @gif.destroy
    redirect_to "/gifs"
  end
  
  def index
    @gifs = Gif.all
  end
  
  
end


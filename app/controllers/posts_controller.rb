class PostsController < ApplicationController

def index
	@posts = Post.all
end
 def show
  @post = Post.find(params[:id])
 end
def customreq

  @var="sum is"+(2+2).to_s

end
def new
	@post = Post.new
end
def create
   @post = Post.new(post12_params)

   if @post.save
			#render :action => :index
			redirect_to posts_path
   else
			render "new"
   end
 end


def edit
  @post = Post.find(params[:id])
end

 def update
    @post = Post.find(params[:id])
      if @post.update_attributes(post12_params)
        redirect_to posts_path
        
      else
        render 'edit'
      end
    
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
    
  end

private
def post12_params
      params.require(:post).permit(:title, :date, :desc, :category_id)
end

end
class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  # before_action :not_sign_in
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # if params[:back]
    #   render :new
    # else
      if @post.save
        redirect_to posts_path, notice: "ブログを作成しました！"
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def confirm
    @post = Post.new(post_params)
    render :new if @post.invalid?
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "削除しました"
  end

  private
  def set_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:image, :content, :image_cache)
  end

end

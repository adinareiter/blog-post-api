class PostsController < ApplicationController
  def show
    @post = Post.find_by(id: params["id"])
    render :show
  end

  def index
    @posts = Post.all
    render :index
  end

  def create
    @post = Post.new(
      title: params["title"],
      body: params["body"],
      username: params["username"],
    )
    @post.save
    if @post.valid?
      render :show
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find_by(id: params["id"])
    @post.update!(
      title: params["title"] || @post.title,
      body: params["body"] || @post.body,
      username: params["username"] || @post.username,
    )
    if @post.valid?
      render :show
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find_by(id: params["id"])
    post.delete
    render json: { message: "successfully deleted" }
  end
end

class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render :index
  end

  def show
    @tag = Tag.find_by(id: params[:id])
    render :show
  end

  def post
    @tag = Tag.create(
      text: params[:text],
    )
    @tag.save
    if @tag.valid?
      render :show
    else
      render json: { errors: @tag.errors.full_messages }
    end
  end

  def update
    @tag = Tag.find_by(id: params[:id])
    @tag.update(
      text: params[:text] || @tag.text,
    )
    if @tag.valid?
      render :show
    else
      render json: { error: @tag.errors.full_messages }
    end
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    @tag.delete
    render json: { message: "successfully deleted" }
  end
end

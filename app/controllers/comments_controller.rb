class CommentsController < ApplicationController
  before_filter :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :set_product, only: [:create]

  respond_to :html

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @comment = @product.comments.new(params[:comment])
    @comment.save
    redirect_to @comment.product
  end

  def update
    @comment.update_attributes(params[:comment])
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end
end

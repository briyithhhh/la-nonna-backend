class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show update destroy ]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    render json: @comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render :show, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if @comment.update(comment_params)
      render :show, status: :ok, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    render json: { message: 'Comment deleted successfully' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:name, :lastname, :email, :phone, :message)
    end
end

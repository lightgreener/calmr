class CommentsController < ApplicationController
    def index
      comments = Comment.all
      render :json => comments
    end

    def show
      @comment = Comment.find params[:id]
    end

    def new
      @comment = Comment.new
    end

    def edit
      @comment = Comment.find params[:id]
    end

    # def create
    #   comment = Comment.create comment_params
    #   redirect_to comment # show
    # end

    def create
      @comment = Comment.new(comment_params)

      if @comment.save
          render :json => @comment
      else
          render :json => @comment.errors
      end
    end

    # def update
    #   comment = Comment.find params[:id]
    #   comment.update comment_params
    #   redirect_to comment
    # end

    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
        if @comment.update(comment_params)
            render :json => @comment
        else
          render :json => @comment.errors
      end
    end

    # def destroy
    #   comment = Comment.find params[:id]
    #   comment.destroy
    #   redirect_to comments_path # index
    # end

    def destroy
      @comment.destroy
      render :json => @comment
    end

    private
      # Use callbacks to share common setup or constraints between actions.

      # Only allow a list of trusted parameters through.
      def comment_params
        params.require(:comment).permit(:content, :user_id)
      end

end

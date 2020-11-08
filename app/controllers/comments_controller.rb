class CommentsController < ApplicationController
    def index
      @comments = Comment.all
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

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
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
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
          format.json { render :show, status: :ok, location: @comment }
        else
          format.html { render :edit }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

    # def destroy
    #   comment = Comment.find params[:id]
    #   comment.destroy
    #   redirect_to comments_path # index
    # end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_comment
        @comment = Comment.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def comment_params
        params.require(:comment).permit(:content, :user_id)
      end

end

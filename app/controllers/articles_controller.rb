class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @article = Article.find params[:id]
    end

    def new
      @article = Article.new
      raise 'hell'
    end

    def edit
      @article = Article.find params[:id]
    end


    def create
      @article = Article.new(article_params)

        if @article.save
          render :json => @article
        else
          render :json => @article.errors
        end
    end

    def update
        if @article.update(article_params)
          render :json => @article
        else
          render :json => @article.errors
        end
      end
    end

    def destroy
      @article.destroy
     render :json => @article
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      # def set_article
      #   @article = Article.find(params[:id])
      # end

    def article_params
      params.require(:article).permit( :name, :link, :user_id)
    end

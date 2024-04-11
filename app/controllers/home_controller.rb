class HomeController < ApplicationController
  def top
    session[:choice_id] = nil
    @posts = Post.all
    @post = Post.find_by(id: params[:id])
  end

  def about
  end

  def Choice
    @post = Post.find_by(id: params[:id])
    @posts = Post.all
end

  def decision
    @seek = Choice.find_by(user_id: @current_user.name, choice_id: params[:one])
    if @seek
      session[:choice_id] = @seek.choice_id
    else
      @choice = Choice.new(user_id: @current_user.name, choice_id: params[:one])
      @choice.save
      session[:choice_id] = @choice.choice_id
    end

    @post = Post.find_by(id: params[:id])
    redirect_to("/#{@post.id}")
  end

  def show
    @post = Post.find_by(id: params[:id])
    @book = Book.find_by(posts_id: params[:posts_id], user_choice: params[:user_choice])
    @posts = Post.all
    @books = Book.all
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @book = Book.find_by(id: params[:book])
    @book.destroy
    redirect_to("/#{@post.id}")
  end

  def destroy2
    @post = Post.find_by(id: params[:id])

    @post.destroy
    redirect_to("/")
  end

  def create
    # redirect_toメソッドを用いて、自動的に投稿一覧ページに転送されるようにしてください
    if @current_user
      @post = Post.new(content: params[:content], post2: params[:post2], user_name: @current_user.name, overview: params[:overview])
      @post.save
    else
      @post = Post.new(content: params[:content], post2: params[:post2])
      @post.save
    end

    redirect_to("/")
  end

  def save
    @post = Post.find_by(id: params[:id])

    @books = Book.new(content: params[:content], posts_id: @post.id, user_choice: @current_user_choice.choice_id)
    @books.save
    redirect_to("/#{@post.id}")
  end

  def word
  end
end

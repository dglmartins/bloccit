class PostsController < ApplicationController
  def index

    @posts = Post.all

    clean_spam

  end

  def show
  end

  def new
  end

  def edit
  end

  def clean_spam
    @posts.each do |post|
      if ((post.id - 1) % 5 == 0)
        post.title = "SPAM"
      end
    end
  end


end

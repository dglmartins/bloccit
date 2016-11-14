class FavoriteMailer < ApplicationMailer
  default from: "dglmartins@outlook.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@bloccit>"
     headers["In-Reply-To"] = "<post/#{post.id}@bloccit>"
     headers["References"] = "<post/#{post.id}@bloccit>"

     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")
  end
end

class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		if @comment.save
			redirect_to post_path(@post)
			flash[:notice] = "Comment Added!"
		else
			redirect_to post_path(@post)
			flash[:notice] = "Comment Added!"
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end

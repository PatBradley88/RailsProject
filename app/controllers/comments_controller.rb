class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			ActionCable.server.broadcast "room_channel", content: @comment.content

		else
			
		end
	end
		
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end
end

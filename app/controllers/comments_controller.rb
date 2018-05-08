class CommentsController < InheritedResources::Base

  ###############################
  
  #create comment

  def create

    #1st find lecture
    @lecture = Lecture.find(params[:lecture_id])

    #create comment for this lecture adding current user id to parameters
    @comment = @lecture.comments.create!(params.require(:comment).permit!.merge(:user_id => current_user.id)) 

    @comment.save

    #return to show lecture
    redirect_to proc { lecture_url(@lecture) }
  end

  ###############################

  private

    def comment_params
      params.require(:comment).permit(:text, :user_id, :lecture_id)
    end

end


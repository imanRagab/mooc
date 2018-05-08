class LecturesController < InheritedResources::Base

  ###############################

  def show 

    @lecture = Lecture.find(params[:id])

    #find comments of the lecture
    @comments = Lecture.find(params[:id]).comments

    #buid new comment for the new comment form
    @comment = @lecture.comments.build
    
  end

  ###############################

  def like_unlike

    @lecture = Lecture.find(params[:id])

    #if user has liked the lecture
    if current_user.voted_up_on? @lecture
      @lecture.unliked_by current_user

    #if user hasn't liked it
    else
      @lecture.liked_by current_user
    
    end

    redirect_to action: "show"

  end

  ###############################

  def spam 

    @lecture = Lecture.find(params[:id])

    @lecture.disliked_by current_user

    redirect_to action: "show"

  end

  ###############################

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end


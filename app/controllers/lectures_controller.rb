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

    if current_user.voted_for? @lecture
      @lecture.unliked_by current_user

    else
      @lecture.liked_by current_user
    
    end

    redirect_to action: "show"

  end

  ###############################

  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end


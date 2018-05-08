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
  
  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end
end


class CoursesController < InheritedResources::Base
  
  before_action :authenticate_user!
  # before_action check_authorization
  
  private

    def course_params
      params.require(:course).permit(:title).merge(user_id: current_user.id)
    end
end


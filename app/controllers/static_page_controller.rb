class StaticPageController < ApplicationController
   layout 'application', except: :home
   def display
     @tutor_infos = TutorInfo.order("created_at DESC").limit(10)
     @student_infos = StudentInfo.order("created_at DESC").limit(10)
   end
end

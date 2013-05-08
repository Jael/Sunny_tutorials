class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  
    if user.role == "admin"
      can :manage, :all
    else
      can :read, :all
    end
    if user.role == "tutor"
      can :create, TutorInfo 
      can :update, TutorInfo do |tutor_info|
        tutor_info.try(:user) == user
      end
    end
    if user.role == "student"
      can :create, StudentInfo
      can [:update, :destroy], StudentInfo do |student_info|
        student_info.try(:user) == user 
      end
    end
  end
end

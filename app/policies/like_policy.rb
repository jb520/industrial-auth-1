class LikePolicy
  
  def initialize(user, like)
    @user = user
    @like = like
  end

  def create?
    true
  end

  def destroy?
    user == like.fan
  end

end

class UserPolicy
  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def feed?
    update?
  end

  def show?
    user == current_user ||
      !user.private? ||
      user.followers.include?(current_user)
  end

  def create?
    true
  end

  def update?
    user == current_user
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def discover?
    update?
  end

  def show_photos?
    user == current_user || !user.private? || user.followers.include?(current_user) || current_user.followers.include?(user)
  end

end

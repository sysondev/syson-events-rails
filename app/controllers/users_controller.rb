class UsersController < BaseController

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end

  def query_params
    params.permit(:email, :name)
  end
end

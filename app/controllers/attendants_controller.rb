class AttendantsController < ApplicationController
  private

  def attendant_params
    params.require(:attendant).permit(:user_id, :event_id)
  end

  def query_params
    params.permit(:user_id, :event_id)
  end
end

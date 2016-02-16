class EventsController < BaseController
  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :starts_at, :ends_at, attendants_attributes: [:user_id])
  end

  def query_params
    params.permit(:title, :description, :location, :start_at, :ends_at)
  end
end

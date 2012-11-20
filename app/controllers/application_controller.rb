class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :add_user_agent


  protected

  def add_user_agent
    # TODO make atomic
    @my_ua = UserAgent.find_or_create_by_original(request.env['HTTP_USER_AGENT'])
    UserAgent.increment_counter :visits, @my_ua.id
    @my_ua.update_attribute :last_seen_at, Time.now
  end
end

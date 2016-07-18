class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_current_order

  protected

  def set_current_order
    @current_order = Order.last&.in_progress? ? Order.last : Order.create
  end
end

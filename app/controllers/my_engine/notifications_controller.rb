module MyEngine
  class NotificationsController < ApplicationController
    def index
      @notifications = Notification.all
    end

    def mark_as_read
      @notification = Notification.find(params[:id])
      @notification.update(status: :read)
      redirect_to notifications_path, notice: "Notification has been marked as read!"
      # render :mark_as_read
    end
  end
end

module MyEngine
  class Notification < ApplicationRecord
    validates :message, presence: true
    enum status: { unread: 0, read: 1 }
  end
end

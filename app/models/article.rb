class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  after_create :log_new_user
  after_update :log_update_user

  private
  def log_new_user
    puts "A new user has been created #{self.title}"
  end

  def log_update_user
    puts "A new user has been updated #{self.title}"
  end
end

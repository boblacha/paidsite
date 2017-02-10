class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :website, presence: true
  validates :timeline, presence: true
  validates :comments, presence: true
    
end
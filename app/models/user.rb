class User < ApplicationRecord

  has_secure_password
  
  validates :user_name, uniqueness: true
  validates :email, uniqueness: true
  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: 'email not recognized'
  }
  validates :primary_zip, format: {
    with: %r{d{5}?},
    message: 'zip not recognized'
  }
  validates :alt_zip, format: {
    with: %r{d{5}?},
    message: 'zip not recognized'
  }     
end


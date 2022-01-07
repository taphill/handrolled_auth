class User < ApplicationRecord
  validates :username, presence: true
  has_secure_password validations: false

  with_options unless: :used_oauth? do |user|
    user.validates :password, presence: true
    user.validates :password, confirmation: true
    user.validates :password_confirmation, presence: true
  end

  private

  def used_oauth?
    # TODO: add logic here to check if user used oauth to authenticate
    false
  end
end

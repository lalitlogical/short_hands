class User < ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps
  rolify

  has_many   :short_hands

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  ## General Information
  field :first_name, type: String
  field :last_name, type: String
  field :mobile_number, type: String
  field :about, type: String
  field :primary_role, type: String
  field :google_id, type: Integer, default: 0

  field :website_url, type: String
  field :facebook_url, type: String
  field :twitter_url, type: String
  field :linkedin_url, type: String
  field :instagram_url, type: String

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  field :locked_at,       type: Time
  field :status, type: Boolean, default: true

  validates :first_name, :last_name, :email, presence: true

  attr_accessor :accepts

  def name
    "#{first_name} #{last_name}"
  end

  def send_devise_notification(notification, *args)
    # devise_mailer.send(notification, self, *args).deliver_later
  end

  def active_for_authentication?
    super && self.status
  end

  def inactive_message
    "Sorry, this account has been deactivated."
  end
end

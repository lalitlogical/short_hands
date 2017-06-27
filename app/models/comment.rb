class Comment < ApplicationRecord
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :shorthand

  # General Information
  field :message, type: String
end

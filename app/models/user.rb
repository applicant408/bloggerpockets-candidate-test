# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :posts, -> { published }

  validates :name, :email, presence: true
  # TODO: Add User#to_s

  def as_json(_options)
    super(only: :name, methods: :posts)
  end
end

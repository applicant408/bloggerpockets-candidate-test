# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :posts, -> { published }

  # TODO: Validate name, it's used everywhere
  # TODO: Add User#to_s
  # TODO: Emails should be unique

  def as_json(_options)
    super(only: :name, methods: :posts)
  end
end

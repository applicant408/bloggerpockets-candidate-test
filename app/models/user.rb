# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :posts, -> { published }

  validates :name, :email, presence: true

  def to_s
    name
  end

  def as_json(_options)
    super(only: :name, methods: :posts)
  end
end

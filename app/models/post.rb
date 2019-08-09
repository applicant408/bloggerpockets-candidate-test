# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true
  # TODO: comments#published has default: false, null: false

  scope :published, -> { where(published: true) }

  def to_s
    title
  end
end

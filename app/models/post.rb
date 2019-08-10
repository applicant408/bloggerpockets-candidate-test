# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true

  scope :published, -> { where(published: true) }

  def to_s
    title
  end
end

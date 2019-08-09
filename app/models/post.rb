# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates_presence_of :title # TODO: use modern Rails validations
  validates_presence_of :body # TODO: use modern Rails validations

  # TODO: comments#published has default: false, null: false

  scope :published, -> { where(published: true) }

  def to_s
    title
  end
end

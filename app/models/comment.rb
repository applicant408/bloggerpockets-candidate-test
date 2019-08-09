# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
   # TODO: add inverse scopes

  scope :published, -> { where(published: true) }
end

class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  # accepts_nested_attributes_for :article
end

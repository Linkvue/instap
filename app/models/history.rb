class History < ApplicationRecord
  belongs_to :reader
  belongs_to :post
end

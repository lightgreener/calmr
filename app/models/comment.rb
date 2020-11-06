class Comment < ApplicationRecord
    belongs_to :article, :optional => true
end

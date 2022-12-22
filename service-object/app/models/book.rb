class Book < ApplicationRecord
  enum condition: %w[new used], _suffix: true
end

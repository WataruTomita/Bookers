class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # 全部のmodelに対して適用
end

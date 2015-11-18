module Categorizable
  extend ActiveSupport::Concern

  included do
    enum category: { citizen: 0, government: 1 }
    before_create :categorize_with_organization
    scope :by_category, -> category { where('category = ?', self.categories[category]) }
  end

  def categorize_with_organization
    if author.organization
      self.category = 'government'
    else
      self.category = 'citizen'
    end
  end
end

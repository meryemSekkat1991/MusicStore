module Sluggable

  extend ActiveSupport::Concern

  included do
    before_validation :set_default_slug, on: [:create, :update]

    def set_default_slug
      if !self.name.nil? && !self.name.empty? && ( self.slug.nil? || self.slug.empty? )
        self.slug = name.parameterize
      end
    end

    end

end
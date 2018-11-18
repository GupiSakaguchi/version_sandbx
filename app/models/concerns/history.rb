module History
  extend ActiveSupport::Concern

  included do
  end

  def klass
    self.class.name.constantize
  end

  def last_attribute(attr)
    last_version.reify.send(attr.to_sym)
  end

  def last_user
    last_version.whodunnit ||= ""
  end

  private
    def last_version
      versions.last
    end
end
module History
  extend ActiveSupport::Concern

  included do
  end

  def klass
    self.class.name.constantize
  end

  def last_attribute(attr)
    versions.last.reify.send(attr.to_sym)
  end
end
require "softy/version"

module Softy
  extend ActiveSupport::Concern

  included do |base|
    base.alias_method :destroy!, :destroy
    base.alias_method :delete!, :delete
    base.default_scope conditions: { deleted_at: nil }
  end

  def persisted?
    !new_record?
  end

  def has_softy?
    true
  end

  def destroy
    _run_destroy_callbacks { delete }
  end

  def delete
    update_column(:deleted_at, Time.now) if !destroyed? && persisted?
    freeze
  end

  def restore!
    update_column(:deleted_at, nil)
  end

  def destroyed?
    !self.deleted_at.nil?
  end
  alias_method :deleted?, :destroyed?

  module ClassMethods
    def only_deleted
      unscoped.where("#{self.table_name}.deleted_at is not null")
    end

    def with_deleted
      unscoped
    end
  end
end

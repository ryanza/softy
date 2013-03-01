module Softy
  class MigrationGenerator < Rails::Generators::NamedBase

    desc "Generates deleted_at column for NAME model"

    def create_migration
      generate("migration", "add_deleted_at_to_#{file_name.pluralize} deleted_at:datetime")
    end
  end
end

require "rubygems"
require "uuidtools"

module Extensions
  module UUID
    extend ActiveSupport::Concern

    included do
      #set_primary_key 'group_id'
      before_create :generate_uuid

      def generate_uuid
        self.id = UUIDTools::UUID.random_create.to_s
      end
    end
  end
end
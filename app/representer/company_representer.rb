require 'representable/json'

class CompanyRepresenter < Representable::Decorator
  include Representable::JSON

  property :name
  property :email
  property :description
  property :disabled
  property :created_at
  property :updated_at
end

class Address
  include Mongoid::Document

  embedded_in :has_address, polymorphic: true

  field :label, type: String
  field :street, type: String
  field :street2, type: String
  field :street3, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String

  def to_s
    s = ''
    s += street unless street.blank?
    s += ", #{street2}" unless street2.blank?
    s += ", #{street3}" unless street3.blank?
    s += ", #{city}" unless city.blank?
    s += " #{state}" unless state.blank?
    s += ", #{zip}" unless zip.blank?
    s
  end
end

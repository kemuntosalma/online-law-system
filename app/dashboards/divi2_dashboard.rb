require "administrate/base_dashboard"

class Divi2Dashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    section_number: Field::Text,
    crime: Field::Text,
    laws: Field::Text,
    section_numbr: Field::Text,
    crme: Field::Text,
    lws: Field::Text,
    secton_number: Field::Text,
    crim: Field::Text,
    law: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :section_number,
    :crime,
    :laws,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :section_number,
    :crime,
    :laws,
    :section_numbr,
    :crme,
    :lws,
    :secton_number,
    :crim,
    :law,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :section_number,
    :crime,
    :laws,
    :section_numbr,
    :crme,
    :lws,
    :secton_number,
    :crim,
    :law,
  ].freeze

  # Overwrite this method to customize how divi2s are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(divi2)
  #   "Divi2 ##{divi2.id}"
  # end
end

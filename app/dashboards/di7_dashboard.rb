require "administrate/base_dashboard"

class Di7Dashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    s: Field::Text,
    c: Field::Text,
    l: Field::Text,
    sa: Field::Text,
    ca: Field::Text,
    la: Field::Text,
    sb: Field::Text,
    cb: Field::Text,
    lb: Field::Text,
    sc: Field::Text,
    cc: Field::Text,
    lc: Field::Text,
    sd: Field::Text,
    cd: Field::Text,
    ld: Field::Text,
    sf: Field::Text,
    cf: Field::Text,
    lf: Field::Text,
    sg: Field::Text,
    cg: Field::Text,
    lg: Field::Text,
    sh: Field::Text,
    ch: Field::Text,
    lh: Field::Text,
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
    :s,
    :c,
    :l,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :s,
    :c,
    :l,
    :sa,
    :ca,
    :la,
    :sb,
    :cb,
    :lb,
    :sc,
    :cc,
    :lc,
    :sd,
    :cd,
    :ld,
    :sf,
    :cf,
    :lf,
    :sg,
    :cg,
    :lg,
    :sh,
    :ch,
    :lh,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :s,
    :c,
    :l,
    :sa,
    :ca,
    :la,
    :sb,
    :cb,
    :lb,
    :sc,
    :cc,
    :lc,
    :sd,
    :cd,
    :ld,
    :sf,
    :cf,
    :lf,
    :sg,
    :cg,
    :lg,
    :sh,
    :ch,
    :lh,
  ].freeze

  # Overwrite this method to customize how di7s are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(di7)
  #   "Di7 ##{di7.id}"
  # end
end

require "administrate/base_dashboard"

class EcetDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    subject: Field::String,
    question: Field::Text,
    a: Field::String,
    b: Field::String,
    c: Field::String,
    d: Field::String,
    answer: Field::String,
    test_count: Field::Number,
    image_yes: Field::String,
    que_image: Field::String,
    imagea: Field::String,
    imageb: Field::String,
    imagec: Field::String,
    imaged: Field::String,
    imaget: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    short_subject: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :short_subject,
    :question,
    :updated_at,
    :test_count,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :subject,
    :question,
    :a,
    :b,
    :c,
    :d,
    :answer,
    :test_count,
    :image_yes,
    :que_image,
    :imagea,
    :imageb,
    :imagec,
    :imaged,
    :imaget,
    :created_at,
    :updated_at,
    :short_subject,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :subject,
    :question,
    :a,
    :b,
    :c,
    :d,
    :answer,
    :test_count,
    :image_yes,
    :que_image,
    :imagea,
    :imageb,
    :imagec,
    :imaged,
    :imaget,
    :short_subject,
  ].freeze

  # Overwrite this method to customize how ecets are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(ecet)
  #   "Ecet ##{ecet.id}"
  # end
end

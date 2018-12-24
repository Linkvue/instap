module Entities
  class Post < Grape::Entity
    format_with(:iso_timestamp) { |dt| dt.iso8601 }
    expose :id
    expose :title
    expose :content
    expose :tags
    with_options(format_with: :iso_timestamp) do
      expose :published_at, if: lambda { |instance| instance.published_at }
      expose :modified_at, if: lambda { |instance| instance.modified_at }
    end
  end
end

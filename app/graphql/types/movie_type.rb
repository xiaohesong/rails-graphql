# # Created By rails generate graphql:object movie
Types::MovieType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Movie'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
end

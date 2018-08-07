Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allMoviess, !types[Types::MovieType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Movie.all }
  end

  field :allUsers, !types[Types::UserType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { User.all }
  end
end

Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createMovie, function: Resolvers::CreateMovie.new
end

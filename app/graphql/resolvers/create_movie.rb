class Resolvers::CreateMovie < GraphQL::Function
  # arguments passed as "args"
  argument :description, !types.String
  argument :title, !types.String

  # return type from the mutation
  type Types::MovieType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Movie.create!(
      description: args[:description],
      title: args[:title],
    )
  end
end

# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end

    field :posts, [Types::PostType], null: false
    def posts
      Post.all
    end

    field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end
    def post(id:)
      Post.find(id)
    end

    field :comments, [Types::CommentType], null: false
    def comments
      Comment.all
    end

    field :comment, Types::CommentType, null: false do
      argument :id, ID, required: true
    end
    def comment(id:)
      Comment.find(id)
    end

    field :foo, String
    def foo
      "hello world"
    end

    field :foo_array, [String]
    def foo_array
      ["hello", "world"]
    end
  end
end

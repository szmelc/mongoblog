module API
  module V1
    class Posts < Grape::API
      version 'v1', using: :path, vendor: 'samurails-blog'

      resources :posts do

        desc 'Returns all posts'
        get do
          Post.all.ordered
        end
      end
    end
  end
end

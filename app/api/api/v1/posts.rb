module API
  module V1
    class Posts < Grape::API
      version 'v1'
      format :json

      resource :posts do
        desc "Return list of recent posts"
        get do
          Post.all
        end

        desc "Return a post."
      params do
        requires :id, type: String, desc: "Post id."
      end
      route_param :id do
        get do
          Post.find(params[:id])
        end
      end

      desc "Create a post."
      params do
        requires :title, type: String, desc: "Your post."
      end
      post do
        
        Post.create!({
          title: params[:title]
        })
      end


      end
    end
  end
end
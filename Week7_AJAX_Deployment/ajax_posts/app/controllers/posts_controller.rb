class PostsController < ApplicationController
    def index
        @posts = Post.all
        @post = Post.new
    end

    def create
        post = Post.new(content: params[:content])
        if post.save
            # post_hash = {
            #     id: post.id,
            #     content: post.content,
            #     created_at: post.created_at
            # }
            render partial: 'post', locals: {p: post}
        else
            # render json: {status: false, errors: post.errors.full_messages}
        end
        
    end

    def destroy
        Post.find(params[:id]).destroy
        render json: {status: true, message: 'Destroyed Post'}
    end
    
    
end

class BlogController < ApplicationController
	def index
		@buns = Bun.all.order("id DESC")
	end

	def new
	end

	def create
		Bun.create(blog_params)
	end

	def destroy
		bun = Bun.find(params[:id])
  	bun.destroy
  end

  def edit
  	@bun = Bun.find(params[:id])
  end

  def update
  	bun = Bun.find(params[:id])
  	bun.update(blog_params)
  end

  def show
    @bun = Bun.find(params[:id])
  end

	private
	def blog_params
		params.permit(:text)
	end
end

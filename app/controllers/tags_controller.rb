class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  # instead of there being a `show` path
    # routes to tickets page with filter set to specific tag

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)
    
    if @tag.save
      flash[:notice] = 'Tag successfully created.'
      redirect_to tags_path
    else
      render :new 
    end  
  end

  def update
  end

  def destroy
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end 
end
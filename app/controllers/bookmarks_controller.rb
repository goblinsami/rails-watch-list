class BookmarksController < ApplicationController

def new
  @bookmark = Bookmark.new
  @list = List.find(params[:list_id])
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @list = List.find(params[:list_id])
  @bookmark.list = @list

if   @bookmark.save
  redirect_to list_path(@list)
else
  render :new
end

end

# def create
#   @bookmark = Bookmark.new(bookmark_params)
#   @bookmark.save
#   # redirect_to tasks_path
# end
# edit
# update

def destroy
  @bookmark = Bookmark.find(params[:id])
  @bookmark.destroy

  redirect_to list_path(@bookmark.list)
end

   private

  def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
  end

end

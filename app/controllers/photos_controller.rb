class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

  end

  def show


@photo_id = params["id"]


db=Photo.find(@photo_id.to_i)

@caption=db.caption
@source=db.source

end

    def destroy
      @photo_id = params["id"]
      db=Photo.find(@photo_id.to_i)

      db.destroy
      @list_of_photos = Photo.all
      render("index.html.erb")
    end

def new_form

end
end

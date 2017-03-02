class BandsController < ApplicationController
  def index
    @bands = Band.all

    render("bands/index.html.erb")
  end

  def show
    @band = Band.find(params[:id])

    render("bands/show.html.erb")
  end

  def new
    @band = Band.new

    render("bands/new.html.erb")
  end

  def create
    @band = Band.new

    @band.name = params[:name]
    @band.description = params[:description]
    @band.primary_genre = params[:primary_genre]
    @band.genre_id = params[:genre_id]

    save_status = @band.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bands/new", "/create_band"
        redirect_to("/bands")
      else
        redirect_back(:fallback_location => "/", :notice => "Band created successfully.")
      end
    else
      render("bands/new.html.erb")
    end
  end

  def edit
    @band = Band.find(params[:id])

    render("bands/edit.html.erb")
  end

  def update
    @band = Band.find(params[:id])

    @band.name = params[:name]
    @band.description = params[:description]
    @band.primary_genre = params[:primary_genre]
    @band.genre_id = params[:genre_id]

    save_status = @band.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bands/#{@band.id}/edit", "/update_band"
        redirect_to("/bands/#{@band.id}", :notice => "Band updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Band updated successfully.")
      end
    else
      render("bands/edit.html.erb")
    end
  end

  def destroy
    @band = Band.find(params[:id])

    @band.destroy

    if URI(request.referer).path == "/bands/#{@band.id}"
      redirect_to("/", :notice => "Band deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Band deleted.")
    end
  end
end

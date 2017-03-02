class GigpostsController < ApplicationController
  def index
    @gigposts = Gigpost.all

    render("gigposts/index.html.erb")
  end

  def show
    @gigpost = Gigpost.find(params[:id])

    render("gigposts/show.html.erb")
  end

  def new
    @gigpost = Gigpost.new

    render("gigposts/new.html.erb")
  end

  def create
    @gigpost = Gigpost.new

    @gigpost.hourly_price = params[:hourly_price]
    @gigpost.title = params[:title]
    @gigpost.description = params[:description]
    @gigpost.band_id = params[:band_id]

    save_status = @gigpost.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/gigposts/new", "/create_gigpost"
        redirect_to("/gigposts")
      else
        redirect_back(:fallback_location => "/", :notice => "Gigpost created successfully.")
      end
    else
      render("gigposts/new.html.erb")
    end
  end

  def edit
    @gigpost = Gigpost.find(params[:id])

    render("gigposts/edit.html.erb")
  end

  def update
    @gigpost = Gigpost.find(params[:id])

    @gigpost.hourly_price = params[:hourly_price]
    @gigpost.title = params[:title]
    @gigpost.description = params[:description]
    @gigpost.band_id = params[:band_id]

    save_status = @gigpost.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/gigposts/#{@gigpost.id}/edit", "/update_gigpost"
        redirect_to("/gigposts/#{@gigpost.id}", :notice => "Gigpost updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Gigpost updated successfully.")
      end
    else
      render("gigposts/edit.html.erb")
    end
  end

  def destroy
    @gigpost = Gigpost.find(params[:id])

    @gigpost.destroy

    if URI(request.referer).path == "/gigposts/#{@gigpost.id}"
      redirect_to("/", :notice => "Gigpost deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Gigpost deleted.")
    end
  end
end

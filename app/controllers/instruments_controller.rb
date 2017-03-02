class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all

    render("instruments/index.html.erb")
  end

  def show
    @instrument = Instrument.find(params[:id])

    render("instruments/show.html.erb")
  end

  def new
    @instrument = Instrument.new

    render("instruments/new.html.erb")
  end

  def create
    @instrument = Instrument.new

    @instrument.instrument_name = params[:instrument_name]

    save_status = @instrument.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/instruments/new", "/create_instrument"
        redirect_to("/instruments")
      else
        redirect_back(:fallback_location => "/", :notice => "Instrument created successfully.")
      end
    else
      render("instruments/new.html.erb")
    end
  end

  def edit
    @instrument = Instrument.find(params[:id])

    render("instruments/edit.html.erb")
  end

  def update
    @instrument = Instrument.find(params[:id])

    @instrument.instrument_name = params[:instrument_name]

    save_status = @instrument.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/instruments/#{@instrument.id}/edit", "/update_instrument"
        redirect_to("/instruments/#{@instrument.id}", :notice => "Instrument updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Instrument updated successfully.")
      end
    else
      render("instruments/edit.html.erb")
    end
  end

  def destroy
    @instrument = Instrument.find(params[:id])

    @instrument.destroy

    if URI(request.referer).path == "/instruments/#{@instrument.id}"
      redirect_to("/", :notice => "Instrument deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Instrument deleted.")
    end
  end
end

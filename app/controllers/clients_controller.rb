class ClientsController < ApplicationController
    def index
      @clients = Client.all
      render :index
    end
    def new
      @client = Client.new
      render :new
    end
    def create
      @client = Client.new(client_params)
      if @client.save
        redirect_to  clients_path
      else
        render :new
      end
    end

  private
    def client_params
      params.require(:client).permit(:name, :tag, :image)
    end

  end

class ClientsController < ApplicationController
    def index
      @clients = Client.all
      render :index
    end
    def new
      @client = current_user.clients.build
      render :new
    end
    def create
      @client = current_user.clients.build(client_params)
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

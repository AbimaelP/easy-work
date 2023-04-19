class Api::UsersController < ApplicationController
    def index
        @nome_do_modelo = User.all
        render json: @nome_do_modelo
    end
end                                         
module Api
    module V1
        class SlogansController < ApplicationController
            def index
                slogans = Slogan.order('created_at DESC')
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded slogans',
                    data: slogans
                    }, status: :ok
            end

            def show
                slogan = Slogan.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded slogans',
                    data: slogan
                    }, status: :ok
            end

            def create
                slogan = Slogan.new(slogan_params)
                if(slogan.save)
                    render json: {
                    status: 'SUCCESS',
                    message: 'Saved slogan',
                    data: slogan
                    }, status: :ok
                    else 
                        render json: {
                        status: 'ERROR',
                        message: 'Slogan not saved',
                        data: slogan.error
                    }, status: :unprocessable_entity
                end
            end

            def destroy
                #Nothing here, why would you destroy a beautiful slogan? :)
            end

            def update
                #We don't need that either
            end

            private def slogan_params
                params.permit(:firstname, :lastname, :email, :slogan)
            end
        end
    end
end
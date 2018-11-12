class Api::ForecastsController < ApplicationController

  def index
    @forecast = HTTP
    .headers({
      "taytbicknell@me.com" => ENV["API_EMAIL"],
      "Authorization" => "Token token=#{ENV["API_KEY"]}"
    }).get("http://localhost:3000/api/forecasts")
    render json: response.parse
  end

  def show
    @forecast =Forecast.find(params[:id])
    render "show.json.jbuilder"
  end
end

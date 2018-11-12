class Api::UsersController < ApplicationController

  def index
    @users = User.order(id: :asc)
    render "index.json.jbuilder"
  end

  def show
    @user =User.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    user = User.new(
    user_name: params[:user_name],
    email: params[:email],
    primary_zip: params[:primary_zip],
    alt_zip: params[:alt_zip],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: "User Created"}, status: :created
    else
      render json: {errors: user.errors.full_message}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.user_name = params[:user_name] || @user.user_name
    @user.email = params[:email] || @user.email
    @user.primary_zip = params[:primary_zip] || @user.primary_zip
    @user.alt_zip = params[:alt_zip] || @user.alt_zip
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation

    if @user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @user.errors.full_message}, status: :unprocessable_entity 
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "user destroyed"}
  end
end
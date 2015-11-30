class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:show, :edit, :update, :destroy]


  def index
    @userinfos = Userinfo.all
  end

  def show
  end

  def new
    @userinfo = Userinfo.new
  end

  def edit
  end

  def create
  @user = User.find(params[:user_id])
    @userinfo = @user.userinfos.create(userinfo_params)

      if @userinfo.save
        redirect_to @user, notice: 'Profile updated successfully.'
      else
      	flash[:alert] = "All fields are required...!"
        redirect_to @user
      end
  end

  def update
    respond_to do |format|
      if @userinfo.update(userinfo_params)
        format.html { redirect_to @userinfo, notice: 'Userinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @userinfo }
      else
        format.html { render :edit }
        format.json { render json: @userinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @userinfo.destroy
    respond_to do |format|
      format.html { redirect_to userinfos_url, notice: 'Userinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_userinfo
      @userinfo = Userinfo.find(params[:id])
    end

    def userinfo_params
      params.require(:userinfo).permit(:user_id, :date_of_birth, :gender, :mobile, :address)
    end
end

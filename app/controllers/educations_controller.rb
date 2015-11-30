class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
  end

  def edit
  end

  def create
  	@user = User.find(params[:user_id])
    @education = @user.educations.create(education_params)
      if @education.save
        redirect_to @user, notice: 'Education was successfully created.'
      else
      	flash[:alert] = "Please fill complete form below..!"
        redirect_to @user
      end
  end

  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:division, :obtained_marks, :pass_year, :user_id, :degre_id, :institute_id)
    end
end

class WorkFieldsController < ApplicationController
  before_action :set_work_field, only: [:show, :edit, :update, :destroy]

  # GET /work_fields
  # GET /work_fields.json
  def index
    @work_fields = WorkField.all
  end

  # GET /work_fields/1
  # GET /work_fields/1.json
  def show
  end

  # GET /work_fields/new
  def new
    @work_field = WorkField.new
    @user = current_user
  end

  # GET /work_fields/1/edit
  def edit
  end

  # POST /work_fields
  # POST /work_fields.json
  def create
    @work_field = WorkField.new(work_field_params)

    respond_to do |format|
      if @work_field.save
        format.html { redirect_to @work_field, notice: 'Work field was successfully created.' }
        format.json { render :show, status: :created, location: @work_field }
      else
        format.html { render :new }
        format.json { render json: @work_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_fields/1
  # PATCH/PUT /work_fields/1.json
  def update
    respond_to do |format|
      if @work_field.update(work_field_params)
        format.html { redirect_to @work_field, notice: 'Work field was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_field }
      else
        format.html { render :edit }
        format.json { render json: @work_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_fields/1
  # DELETE /work_fields/1.json
  def destroy
    @work_field.destroy
    respond_to do |format|
      format.html { redirect_to work_fields_url, notice: 'Work field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_field
      @work_field = WorkField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_field_params
      params.require(:work_field).permit(:field_name)
    end
end

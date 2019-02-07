class SimpleWidgetsController < ApplicationController
  before_action :set_simple_widget, only: [:show, :edit, :update, :destroy]

  # GET /simple_widgets
  # GET /simple_widgets.json
  def index
    @simple_widgets = SimpleWidget.all
  end

  # GET /simple_widgets/1
  # GET /simple_widgets/1.json
  def show
  end

  # GET /simple_widgets/new
  def new
    raise "Oh noes! Something be broke!"
    @simple_widget = SimpleWidget.new
  end

  # GET /simple_widgets/1/edit
  def edit
  end

  # POST /simple_widgets
  # POST /simple_widgets.json
  def create
    @simple_widget = SimpleWidget.new(simple_widget_params)

    respond_to do |format|
      if @simple_widget.save
        format.html { redirect_to @simple_widget, notice: 'Simple widget was successfully created.' }
        format.json { render :show, status: :created, location: @simple_widget }
      else
        format.html { render :new }
        format.json { render json: @simple_widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_widgets/1
  # PATCH/PUT /simple_widgets/1.json
  def update
    respond_to do |format|
      if @simple_widget.update(simple_widget_params)
        format.html { redirect_to @simple_widget, notice: 'Simple widget was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_widget }
      else
        format.html { render :edit }
        format.json { render json: @simple_widget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_widgets/1
  # DELETE /simple_widgets/1.json
  def destroy
    @simple_widget.destroy
    respond_to do |format|
      format.html { redirect_to simple_widgets_url, notice: 'Simple widget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_widget
      @simple_widget = SimpleWidget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_widget_params
      params.require(:simple_widget).permit(:name, :count, :comments)
    end
end

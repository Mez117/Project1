class Car < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :engine, :optional => true
    has_one :trim
    belongs_to :manufacturer, :optional => true
    # def create
    #     car = Car.create car_params
    #     if params[:file].present?
    #         req = Cloudinary::Uploader.upload(params[:file])
    #         car.image_url = req["public_id"]
    #         car.save *use car.update car_params*
    #     end
    #     redirect_to car
    # end
# put in controller!!!! (WHEREVER YOU PUT "image_tag" ADD cl_ beforehand!!)

# put in form!!!!
# <%= form_for(@car, :html => { :multipart => true}) do |f| %>
# <%= f.label :image %>
# <%= f.cl_image_upload :image_url %>
end

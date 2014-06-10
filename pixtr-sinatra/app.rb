require "sinatra"

get "/:gallery_name" do
	cat_images_in_app_rb = ["images.jpeg"]
    dog_images_in_app_rb = ["dogs.erb"]
  gallery_name = params[:gallery_name] # "cats"
  erb gallery_name.to_sym, {
  	locals:
  	{ cat_images: cat_images_in_app_rb, five: 5}
  }
end



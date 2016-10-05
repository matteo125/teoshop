module Spree::BaseHelper

  def logo(image_path = ("logo.png"), img_option: {})
    link_to image_tag(image_path, img_option), spree.root_path
  end

end

module Jekyll
  module AssetFilter
    def background_image_css(background_image_url)
      # via http://stackoverflow.com/questions/16589519/use-css-gradient-over-background-image
      "background: -moz-linear-gradient(top, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 59%, rgba(0, 0, 0, 0.65) 100%), url('#{background_image_url}') no-repeat;"\
      "background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0)), color-stop(59%, rgba(0, 0, 0, 0)), color-stop(100%, rgba(0, 0, 0, 0.65))), url('#{background_image_url}') no-repeat;"\
      "background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 59%, rgba(0, 0, 0, 0.65) 100%), url('#{background_image_url}') no-repeat;"\
      "background: -o-linear-gradient(top, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 59%, rgba(0, 0, 0, 0.65) 100%), url('#{background_image_url}') no-repeat;"\
      "background: -ms-linear-gradient(top, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 59%, rgba(0, 0, 0, 0.65) 100%), url('#{background_image_url}') no-repeat;"\
      "background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0) 59%, rgba(0, 0, 0, 0.65) 100%), url('#{background_image_url}') no-repeat;"\
      "background-size: auto, cover;"\
      "background-position: center, center;"
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
